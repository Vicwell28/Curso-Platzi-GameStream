//
//  Juegos+View.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI
import Kingfisher

struct Juegos_View: View {
    
    @ObservedObject var todosLosPokemons = ViewModel()
    
    @State var gameviewIsActive: Bool = false
    @State var url:String = ""
    @State var titulo:String = ""
    @State var studio:String = ""
    @State var calificacion: String = ""
    @State var anoPublicacion: String = ""
    @State var descripcion:String = ""
    @State var tags:[String] = [""]
    @State var imgsUrl: [String] = [""]
    
    let gridItems = [GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top)]
    
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            VStack {
                Text("Hello, Juegos_View!")
                ScrollView {
                    LazyVGrid(columns: self.gridItems,spacing: 10) {
                        ForEach(self.todosLosPokemons.games, id: \.self) { juego in
                            Button(action: {
                                print(juego)
                                url = juego.videosUrls.mobile
                                titulo = juego.title
                                studio = juego.studio
                                calificacion = juego.contentRaiting
                                anoPublicacion = juego.publicationYear
                                descripcion = juego.description
                                tags = juego.tags
                                imgsUrl = juego.galleryImages
                                print("Pulse el juego \(titulo)")
                            }, label: {
                                VStack {
                                    KFImage(URL(string: juego.galleryImages[0])!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.horizontal, 5)
                                    Text(juego.title)
                                        .lineLimit(2)
                                        .truncationMode(.tail)
                                        .minimumScaleFactor(0.9)
                                        .textCase(.lowercase)
                                        .textInputAutocapitalization(.words)
                                        .font(Font.system(size: 20))
                                }
                            }).background(Color.white.opacity(0.2))
                        }
                    }
                }
            }.background(Color.white.opacity(0.2))
        }
        .foregroundColor(Color.white)
        .onAppear {
            print("Pokemons: \(todosLosPokemons.games)")
        }
    }
}

