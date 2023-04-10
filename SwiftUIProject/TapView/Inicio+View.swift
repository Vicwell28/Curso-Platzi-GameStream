//
//  Inicio+View.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI

struct Inicio_View: View {
    
    
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            
            VStack {
                
                Logo()
                    .padding(.horizontal, 10)
                
                ScrollView {
                    
                  SearchBarView()
                    
                    
                }
                .padding(.horizontal, 10)
                .frame(maxWidth: .infinity)
                .background(Color.white.opacity(0.2))

            }
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.2))
            
        }
        .foregroundColor(Color.white)
        
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
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            TextField(text: self.$textSeacrhBar) {
                Text("Buscar un video...")
                    .foregroundColor(Color.white)
            }
            .foregroundColor(Color.white)
            .autocorrectionDisabled(false)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 8)
        .background(Color.white.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}



//magnifyingglass


struct p_inicio: PreviewProvider {
    static var previews: some View {
        Inicio_View()
    }
}
