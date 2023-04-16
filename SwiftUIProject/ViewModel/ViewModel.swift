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
    
}
