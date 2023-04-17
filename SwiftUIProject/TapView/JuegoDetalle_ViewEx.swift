//
//  JuegoDetalle_ViewEx.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 16/04/23.
//

import SwiftUI
import Kingfisher
import AVKit


struct JuegoDetalle_ViewEx: View {
    
    var currentGame: Game?
    
    @State var isLiked: Bool = false
    @State var nameHeart: String = "heart"
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            
            ScrollView {
                
                NavigationLink {
//                    PlayVideoView(player: AVPlayer(url: URL(string: currentGame!.imgsUrl[0])!))
                    PlayVideoView(player: AVPlayer(url: URL(string: self.currentGame!.videosUrls.mobile)!))
                } label: {
                    ZStack{
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
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
                    Text(self.currentGame!.title)
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
                    Text(self.currentGame!.studio)
                        .font(Font.system(size: 22, weight: .bold, design: .rounded))
                    
                    Text(self.currentGame!.contentRaiting)
                        .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    
                    Text(self.currentGame!.publicationYear)
                        .font(Font.system(size: 18, weight: .bold, design: .rounded))
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal, 10)
                
                Text(self.currentGame!.description)
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
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
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
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 150)
                        
                        KFImage(URL(string: self.currentGame!.galleryImages[0])!)
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

