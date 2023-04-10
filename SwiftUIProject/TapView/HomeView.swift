//
//  HomeView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var tabItemSelection: Int = 2
    
    var body: some View {
        
        TabView(selection: self.$tabItemSelection) {
            Perfil_View()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }.tag(0)
            
            Juegos_View()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Juegos")
                }.tag(1)

            Inicio_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }.tag(2)

            Favoritos_View()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }.tag(3)
        }
        .tabViewStyle(DefaultTabViewStyle())
        .tint(Color.white)
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor(named: "TabBar-Color")
            UITabBar.appearance().unselectedItemTintColor = UIColor.white.withAlphaComponent(0.25)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
