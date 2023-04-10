//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
                
                VStack {
                    Image(systemName: "person.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 50).colorInvert().padding(.bottom, 20.0)
                    
                    InicioYRegistroView()
                }
            }
        }
    }
}




