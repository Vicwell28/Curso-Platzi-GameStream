//
//  Inicio+View.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI
import AVKit
import Kingfisher

struct Inicio_View: View {
    
    var ApiViewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            
            VStack {
                Logo()
                    .padding(.horizontal, 10)
                
                ScrollView(showsIndicators: false) {
                    
                    SearchBarView()
                    
                    SubModuloHome()
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity)
                }
                .padding(.horizontal, 10)
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
        }
        .foregroundColor(Color.white)
        
    }
}


struct CategoriesWithImages: Identifiable{
    let id = UUID()
    let name: String
    let image: String
}

struct CategoryCardVideoViewData: Identifiable{
    let id = UUID()
    let name: String
    let video: String
}



struct SubModuloHome:View {
    
    @State var url = "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"
    
    @State var isPlayerActive = false
    
    let urlVideos:[String] = ["https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4",
                              "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]
    
    let nameImages : [String] = [
        "13-swiftuiapps-2105-battkefield",
        "13-swiftuiapps-2105-destiny_complete",
        "13-swiftuiapps-2105-lastofus",
        "13-swiftuiapps-2105-spiderman",
        "13-swiftuiapps-2105-titanfall2",
        "13-swiftuiapps-2105-uncharted4",
        "13-swiftuiapps-2105-farcry4",
    ]
    
    let dataSourcesCategories: [CategoriesWithImages] = [
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
        CategoriesWithImages(name: "rpg-icon", image: "rpg-text"),
        CategoriesWithImages(name: "open-world-icon", image: "open-world-text"),
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
        CategoriesWithImages(name: "rpg-icon", image: "rpg-text"),
        CategoriesWithImages(name: "open-world-icon", image: "open-world-text"),
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
        CategoriesWithImages(name: "rpg-icon", image: "rpg-text"),
        CategoriesWithImages(name: "open-world-icon", image: "open-world-text"),
        CategoriesWithImages(name: "Vector-shot", image: "fps"),
    ]
    
    let dataSourcesCategoryVideo: [CategoryCardVideoViewData] = [
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-battkefield", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-destiny_complete", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-lastofus", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-spiderman", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-titanfall2", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-uncharted4", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-farcry4", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-battkefield", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-destiny_complete", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-lastofus", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-spiderman", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-titanfall2", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-uncharted4", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"),
        CategoryCardVideoViewData(name: "13-swiftuiapps-2105-farcry4", video: "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"),
    ]
    
    var body: some View {
        
        Text("LOS MAS POPULARES")
            .fontWeight(.bold)
            .font(.system(size: 22))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, -5)
            .padding(.top, 15)
        
        
        VStack(alignment: .leading) {
            
            NavigationLink {
                PlayVideoView(player: AVPlayer(url: URL(string: self.urlVideos[0])!))
            } label: {
                ZStack {
                    Image("13-swiftuiapps-2105-thewitcher")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .scaledToFill()
                    
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 40)
                }
            }
            
            
            Text("The Witcher 3: Wild Hunt")
                .fontWeight(.bold)
                .font(.system(size: 20))
        }
        .padding(.all, 4)
        .background(Color.white.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
        
        
        
        Text("LOS MAS POPULARES")
            .fontWeight(.bold)
            .font(.system(size: 22))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 30)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(self.dataSourcesCategories.shuffled(), id: \.id) { category in
                    CategoryCardView(firstImage: category.name, secondImage: category.image)
                }
            }
            
        }.padding(.top, -10)
        
        
        
        
        Text("LOS MAS POPULARES")
            .fontWeight(.bold)
            .font(.system(size: 22))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 30)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(self.dataSourcesCategoryVideo.shuffled(), id: \.id) { category in
                    CategoryCardVideoView(image: category.name, videoPlayer: AVPlayer(url: URL(string: category.video)!))
                }
            }
        }.padding(.top, -10)
        
        
        
        Text("LOS MAS POPULARES")
            .fontWeight(.bold)
            .font(.system(size: 22))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 30)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(self.dataSourcesCategoryVideo.shuffled(), id: \.id) { category in
                    CategoryCardVideoView(image: category.name, videoPlayer: AVPlayer(url: URL(string: category.video)!))
                }
            }
        }
        .padding(.top, -10)
        .padding(.bottom, 50)
        
    }
}

struct CategoryCardView: View {
    
    var firstImage : String
    var secondImage : String
    
    var body: some View {
        Button {
            print("Los mas populares")
        } label: {
            ZStack {
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    .frame(width: 225, height: 100)
                VStack {
                    Image(self.firstImage)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 33)
                    
                    Image(self.secondImage)
                        .resizable()
                        .aspectRatio(3.5/1.5, contentMode: .fit)
                        .frame(width: 33)
                    
                }
                .padding(.all, 10)
            }
        }
        
    }
}

struct CategoryCardVideoView: View {
    
    var image : String
    var videoPlayer : AVPlayer
    
    var body: some View {
        NavigationLink {
            PlayVideoView(player: self.videoPlayer)
        } label: {
            Image(image)
                .resizable()
                .cornerRadius(20)
                .scaledToFill()
                .frame(width: 227, height: 128)
                .padding(.trailing, 20)
        }
        
    }
}

struct Logo : View {
    var body: some View {
        HStack {
            Image(systemName: "gamecontroller")
            Text("Logo")
                .fontWeight(.bold)
                .font(.system(size: 30.0))
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}


struct SearchBarView: View {
    @State var textSeacrhBar : String = ""
    @State var isThereError: Bool = false
    @State var msjAlerta: String = ""
    @State var isPresentView: Bool = false
    @State var juego: Game?
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").onTapGesture {
                print("Algo")
            }
            
            TextField(text: self.$textSeacrhBar) {
                Text("Buscar un video...")
                    .foregroundColor(Color.white)
            }.onSubmit {
                ViewModel.requestData(videoGame: self.textSeacrhBar) { isSucces, data, error in
                    if error != nil {
                        self.msjAlerta = error!.localizedDescription
                        self.isThereError.toggle()
                        return
                    }
                    
                    self.juego = try! JSONDecoder().decode(Game.self, from: data!)
                    self.isPresentView = true
                }
            }
            .foregroundColor(Color.white)
            .autocorrectionDisabled(false)
        }
        .navigationDestination(isPresented: self.$isPresentView, destination: {
            JuegoDetalle_ViewEx(currentGame: self.juego)
        })
        .alert(self.msjAlerta, isPresented: self.$isThereError, actions: {
            Button("oK", role: .cancel) { }
        })
        .frame(maxWidth: .infinity)
        .padding(.all, 8)
        .background(Color.white.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

