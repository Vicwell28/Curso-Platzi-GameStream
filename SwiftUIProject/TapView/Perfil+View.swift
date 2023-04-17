//
//  Perfil+View.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 10/04/23.
//

import SwiftUI

struct Perfil_View: View {
    var body: some View {
        ZStack {
            Color("Marin")
                .ignoresSafeArea()
            
            Text("Hello, Perfil_View!")
        }.foregroundColor(Color.white)
    }
}

struct previewProfile: PreviewProvider {
    static var previews: some View {
        Perfil_View()
    }
}
