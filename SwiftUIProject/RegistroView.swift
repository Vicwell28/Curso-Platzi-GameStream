//
//  RegistroView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 09/04/23.
//

import SwiftUI

struct RegistroView: View {
    
    @State var isTextPassHide : Bool = false
    @State var UserEmail : String = ""
    @State var UserContra : String = ""
    
    var body : some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                
                
                Text("Elige una foto de perfil")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.bold)
                    .font(.system(size: 22))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.top, 10)
                
                Text("Puedes cambiar o elegirla mas adelante")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.light)
                    .font(.system(size: 15))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.top, 0.1)
                
                HStack{
                    ZStack {
                        Circle()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 80, alignment: .center)
                            .foregroundColor(.gray.opacity(0.5))
                        
                        Image(systemName: "camera")
                            .resizable()
                            .aspectRatio(2/1.5, contentMode: .fit)
                            .frame(width: 35)
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity,alignment: .center)
                
                
                
                
                
                
                Text("Correo electronico*")
                    .foregroundColor(Color("Dark-Cian"))
                    .fontWeight(Font.Weight.bold)
                    .tracking(1)
                    .font(.system(size: 20))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .padding(.top, 20)
                
                ZStack(alignment: .leading) {
                    if UserEmail.isEmpty {
                        Text(verbatim: "ejemplo@gmail.com")
                            .foregroundColor(.white)
                            .fontWeight(Font.Weight.light)
                            .tracking(1)
                            .font(.system(size: 15))
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    
                    TextField(text: $UserEmail) {
                        
                    }
                    .fontWeight(Font.Weight.light)
                    .tracking(1)
                    .font(.system(size: 15))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                    .colorInvert()
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textContentType(.emailAddress)
                }
                Divider().frame(height: 1).colorInvert()
            }
            
            VStack(alignment: .leading) {
                Text("Contrasena*")
                    .foregroundColor(Color("Dark-Cian"))
                    .fontWeight(Font.Weight.bold)
                    .tracking(1)
                    .font(.system(size: 20))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                
                ZStack(alignment: .leading) {
                    if UserContra.isEmpty {
                        Text(verbatim: "***********")
                            .foregroundColor(.white)
                            .fontWeight(Font.Weight.light)
                            .tracking(1)
                            .font(.system(size: 15))
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    
                    
                    if self.isTextPassHide {
                        TextField(text: self.$UserContra) {
                            
                        }
                        .fontWeight(Font.Weight.light)
                        .tracking(1)
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .colorInvert()
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    } else {
                        SecureField(text: $UserContra) {
                            
                        }
                        .fontWeight(Font.Weight.light)
                        .tracking(1)
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .colorInvert()
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    }
                    
                    HStack() {
                        Spacer()
                        
                        Button {
                            self.isTextPassHide.toggle()
                        } label: {
                            Image(systemName: "eye.fill").foregroundColor(Color("Dark-Cian"))
                        }
                        
                    }.frame(maxWidth: .infinity)
                    
                }
                
                
                Divider().frame(height: 1).colorInvert()
            }
            
            
            VStack(alignment: .leading) {
                Text(verbatim: "***********")
                    .foregroundColor(Color("Dark-Cian"))
                    .fontWeight(Font.Weight.bold)
                    .tracking(1)
                    .font(.system(size: 20))
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                
                ZStack(alignment: .leading) {
                    if UserContra.isEmpty {
                        Text(verbatim: "*******")
                            .foregroundColor(.white)
                            .fontWeight(Font.Weight.light)
                            .tracking(1)
                            .font(.system(size: 15))
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    
                    
                    if self.isTextPassHide {
                        TextField(text: self.$UserContra) {
                            
                        }
                        .fontWeight(Font.Weight.light)
                        .tracking(1)
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .colorInvert()
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    } else {
                        SecureField(text: $UserContra) {
                            
                        }
                        .fontWeight(Font.Weight.light)
                        .tracking(1)
                        .font(.system(size: 15))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .colorInvert()
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    }
                    
                    HStack() {
                        Spacer()
                        
                        Button {
                            self.isTextPassHide.toggle()
                        } label: {
                            Image(systemName: "eye.fill").foregroundColor(Color("Dark-Cian"))
                        }
                        
                    }.frame(maxWidth: .infinity)
                    
                }
                
                
                Divider().frame(height: 1).colorInvert()
            }
            
            
            
            
            
            Button {
                print("Se esta iniciando session")
            } label: {
                Text("REGISTRATE")
                    .font(.system(size: 23.0))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
                    .frame(maxWidth: .infinity)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color("Dark-Cian"),lineWidth: 1.8)
                            .shadow(color: Color.white, radius: 10)
                    })
            }.padding(.top, 30)
            
            Text("Inicia sesion con redes sociales")
                .padding(.top, 50)
                .foregroundColor(.white)
                .fontWeight(Font.Weight.light)
                .tracking(1.05)
                .font(.system(size: 15))
            
            
            HStack(spacing: 10.0) {
                
                MyButtonGray_SwiftUIView(title: "Facebook", action: {
                    print("Facebook")
                })
                MyButtonGray_SwiftUIView(title: "Twitter", action: {
                    print("Twitter")
                })
                
            }
            .padding(.top, 20.0)
            .frame(maxWidth: .infinity)
            
        }
        .padding(.all, 10.0)
        .scrollIndicators(/*@START_MENU_TOKEN@*/.hidden/*@END_MENU_TOKEN@*/, axes: /*@START_MENU_TOKEN@*/[.vertical, .horizontal]/*@END_MENU_TOKEN@*/)
    }
    
}
