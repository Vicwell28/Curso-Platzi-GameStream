//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by soliduSystem on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
            
            VStack {
                Image(systemName: "person.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 50).colorInvert().padding(.bottom, 20.0)
                
                InicioYRegistroView()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InicioYRegistroView : View {
    
    @State var TipoInicioSesin : Bool = true
    @State var isTextPassHide : Bool = false
    @State var UserEmail : String = ""
    @State var UserContra : String = ""
    
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
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Inicio de Sesion")
                            .foregroundColor(Color("Dark-Cian"))
                            .fontWeight(Font.Weight.bold)
                            .tracking(1)
                            .font(.system(size: 20))
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        
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
                        Text("Contrasena")
                            .foregroundColor(Color("Dark-Cian"))
                            .fontWeight(Font.Weight.bold)
                            .tracking(1)
                            .font(.system(size: 20))
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        
                        ZStack(alignment: .leading) {
                            if UserContra.isEmpty {
                                Text(verbatim: "contrasena")
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
                        print("El usuario olviod su contra")
                    } label: {
                        Text("¿Olvidaste tu contraseña?").foregroundColor(Color("Dark-Cian"))
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                    
                    
                    Button {
                        print("Se esta iniciando session")
                    } label: {
                        Text("Iniciar Sesion")
                            .font(.system(size: 22))
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
                        
                        MyButtonGray(title: "Facebook", action: {
                            print("Facebook")
                        })
                        MyButtonGray(title: "Twitter", action: {
                            print("Twitter")
                        })
                        
                    }
                    .padding(.top, 20.0)
                    .frame(maxWidth: .infinity)
                    
                    
                    
                    
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
                
            } else {
                ScrollView {
                    Text("Inicio de Sesion").foregroundColor(Color.white).bold()
                }
                
            }
        }
        .padding()
    }
}



struct MyButtonGray : View {
    
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
//EXA : 3FCAA0

