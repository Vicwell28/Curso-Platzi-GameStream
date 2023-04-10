//
//  MyButtonGray+SwiftUIView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 09/04/23.
//

import SwiftUI

struct MyButtonGray_SwiftUIView: View {
    
    var title : String
    var action : () -> Void
    
    var body: some View {
        Button(
            action: self.action,
            label: {
                Text(self.title)
                    .fontWeight(Font.Weight.bold)
                    .tracking(1.05)
                    .font(.system(size: 15))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15.0)
                    .background(Color.gray.opacity(0.5))
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            })
        .cornerRadius(20)
    }
}
