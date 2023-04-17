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
        
    let gridItems = [GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top)]
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            VStack {
                Text("Juegos")
                    .font(Font.system(size: 35, weight: .bold, design: .rounded))
                ScrollView {
                    LazyVGrid(columns: self.gridItems,spacing: 10) {
                        ForEach(self.todosLosPokemons.games, id: \.self) { juego in

                            NavigationLink {
                                JuegoDetalle_View(
                                    url: juego.videosUrls.mobile,
                                    titulo: juego.title,
                                    studio: juego.studio,
                                    calificacion: juego.contentRaiting,
                                    anoPublicacion: juego.publicationYear,
                                    descripcion: juego.description,
                                    tags: juego.tags,
                                    imgsUrl: juego.galleryImages)
                            } label: {
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
                            }

                        }
                    }
                }
            }
        }
        .foregroundColor(Color.white)
        .onAppear {
            print("Pokemons: \(todosLosPokemons.games)")
        }.navigationBarBackButtonHidden(false)
    }
}

//struct PreviewGame: PreviewProvider {
//    static var previews: some View {
//        Juegos_View()
//    }
//}
