//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Marin").ignoresSafeArea()
                
                VStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .colorInvert()
                        .padding(.bottom, 20.0)
                    
                    InicioYRegistroView()
                }
            }
        }
    }
}
