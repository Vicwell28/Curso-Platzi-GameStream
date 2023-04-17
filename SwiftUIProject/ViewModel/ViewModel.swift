//
//  ViewModel.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var games: [Game] = [Game]()
    
    init() {
        var request = URLRequest(url: URL(string: "https://gamestreamapi.herokuapp.com/api/games")!)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, res, err in
            
            if err != nil {
                print("Error: \(err!)")
            }
            
            do {
                
                if let jsonData = data {
                    
                    let jsonResponse = try JSONDecoder().decode([Game].self, from: jsonData)
                    self.games.append(contentsOf: jsonResponse)
                    
                    
                    print("\(jsonResponse)")
                    
                } else {
                    print("Nada")
                }
                
            } catch {
                print("Catch Error: \(error)")
            }
            
        }.resume()
    }
    
    
    static func requestData(videoGame: String,finished: @escaping (_ isSucces: Bool, _ data: Data?, _ error: Error?) -> Void){
        
        
        
        var components = URLComponents(url: URL(string: "https://gamestreamapi.herokuapp.com/api/games/search")!, resolvingAgainstBaseURL: true)!
        components.queryItems = [ URLQueryItem(name: "contains", value: videoGame) ]
        
        guard let url = components.url else {
            fatalError("No sepudo crar la URL  con los parametros de busqueda")
        }
        
        print(url)
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, res, err in
            
            if err != nil {
                print("Error: \(err!)")
            }
            
            do {
                
                if let jsonData = data {
                    
                    let jsonResponse = try JSONDecoder().decode(ResultSearch.self, from: jsonData)
                    print("\(jsonResponse)")
                    
                    if jsonResponse.results.isEmpty {
                        finished(true, nil, MyError.customError("El Array esta vacio"))
                        return
                    }
                    
                    
                    let JsonData = try JSONEncoder().encode(jsonResponse.results[0])
                    finished(true, JsonData, nil)
                    
                } else {
                    finished(true, nil, MyError.customError("No hay datos"))
                }
                
            } catch {
                print("Catch Error: \(error)")
            }
            
        }.resume()
        
    }
    
}

struct ResultSearch: Codable {
    let results: [Game]
}


enum MyError: Error {
    case customError(String)
}
