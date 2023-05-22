//
//  LoginView.swift
//  ElClosetDeTitaIOS
//
//  Created by Elian Acuña on 21/05/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack(spacing: 20) {
                    Image("logo_closet")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                        .cornerRadius(80 / 2)
                    
                    Text("¡Bienvenidos a\nAlClosetDeTita!")
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    TextField("Correo electrónico", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Contraseña", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        // Acción cuando se presione el botón de iniciar sesión
                    }) {
                        Text("Iniciar sesión")
                            .foregroundColor(.white)
                            .frame(width: 330, height: 65)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Acción cuando se presione el botón de recuperar contraseña
                    }) {
                        Text("Recuperar contraseña")
                            .foregroundColor(.black)
                            .frame(width: 330, height: 65)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
