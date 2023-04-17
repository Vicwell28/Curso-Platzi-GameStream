//
//  JuegoDetalle+View.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 15/04/23.
//

import SwiftUI
import Kingfisher
import AVKit

struct JuegoDetalle_View: View {
    
    var url:String
    var titulo:String
    var studio:String
    var calificacion: String
    var anoPublicacion: String
    var descripcion:String
    var tags:[String]
    var imgsUrl: [String]
    
    @State var isLiked: Bool = false
    @State var nameHeart: String = "heart"
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            
            ScrollView {
                
                NavigationLink {
                    PlayVideoView(player: AVPlayer(url: URL(string: imgsUrl[0])!))
                } label: {
                    ZStack{
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .frame(height: 300.0)
                            .scaledToFit()
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 50)
                    }
                }
                
                
                HStack {
                    Text(titulo)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.system(size: 40, weight: .bold, design: .rounded))
                    
                    Button {
                        
                        self.nameHeart = self.isLiked ? "heart" : "heart.fill"
                        self.isLiked.toggle()
                        
                    } label: {
                        Image(systemName: self.nameHeart)
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 30)
                    }
                    
                }.padding(.horizontal, 10)
                
                
                
                HStack {
                    Text(self.studio)
                        .font(Font.system(size: 22, weight: .bold, design: .rounded))
                    
                    Text(self.calificacion)
                        .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    
                    Text(self.anoPublicacion)
                        .font(Font.system(size: 18, weight: .bold, design: .rounded))
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal, 10)
                
                Text(self.descripcion)
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                
                
                Text("GALERIA")
                    .font(Font.system(size: 25, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 10)
                    .padding(.top, 40)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                }
                
                
                CommentView()
                
                
                Text("JUEGOS SIMILARES")
                    .font(Font.system(size: 25, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 10)
                    .padding(.top, 40)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: imgsUrl[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                    }
                }.padding(.bottom, 50.0)
                
                
            }
            .ignoresSafeArea()
            
        }.foregroundColor(Color.white)
    }
}

struct CommentView: View {
    var body: some View {
        VStack {
            
            Text("COMENTARIOS")
                .font(Font.system(size: 25, weight: .bold, design: .rounded))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal, 10)
                .padding(.top, 40)
            
            VStack {
                HStack {
                    //imagen perifl
                    Circle()
                        .frame(width: 50)
                        .aspectRatio(1, contentMode: .fit)
                    
                    //parrfaof
                    VStack(alignment: .leading) {
                        Text("Geoff Atto")
                            .font(Font.system(size: 20, weight: .bold, design: .rounded))
                        Text("Hace 7 dias")
                            .font(Font.system(size: 15, weight: .bold, design: .rounded))
                    }.frame(maxWidth: .infinity,alignment: .leading)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                
                Text("He visto que como media tiene una gran calificación, y estoy completamente de acuerdo. Es el mejor juego que he jugado sin ninguna duda, combina una buena trama con una buenísima experiencia de juego libre gracias a su inmenso mapa y actividades.")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10)
            }
            .background(.white.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 10)
            .padding(.bottom, 15)
            
            
            VStack {
                HStack {
                    //imagen perifl
                    Circle()
                        .frame(width: 50)
                        .aspectRatio(1, contentMode: .fit)
                    
                    //parrfaof
                    VStack(alignment: .leading) {
                        Text("Geoff Atto")
                            .font(Font.system(size: 20, weight: .bold, design: .rounded))
                        Text("Hace 7 dias")
                            .font(Font.system(size: 15, weight: .bold, design: .rounded))
                    }.frame(maxWidth: .infinity,alignment: .leading)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                
                Text("He visto que como media tiene una gran calificación, y estoy completamente de acuerdo. Es el mejor juego que he jugado sin ninguna duda, combina una buena trama con una buenísima experiencia de juego libre gracias a su inmenso mapa y actividades.")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10)
            }
            .background(.white.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 10)
            .padding(.bottom, 15)
        }
    }
}
