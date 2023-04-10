//
//  InicioYRegistroView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 09/04/23.
//

import SwiftUI

struct InicioYRegistroView : View {
    
    @State var TipoInicioSesin : Bool = true
    
    var body : some View {
        VStack() {
            HStack {
                Spacer()
                Button("INICIA SESION") {
                    TipoInicioSesin = true
                }
                .foregroundColor(TipoInicioSesin ? .white : .gray)
                .fontWeight(Font.Weight.bold)
                .font(.system(size: 25))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                
                
                Spacer()
                Button("REGISTRATE") {
                    TipoInicioSesin = false
                }
                .foregroundColor(TipoInicioSesin ? .gray : .white)
                .fontWeight(Font.Weight.bold)
                .font(.system(size: 25))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                
                Spacer()
            }
            Spacer()
            
            if  TipoInicioSesin {
                InicioSesionView()
            } else {
                RegistroView()
            }
            
        }.padding()
    }
}

