//
//  ContentView.swift
//  ElClosetDeTitaIOS
//
//  Created by Elian Acuña on 21/05/23.
//

import SwiftUI

struct SignUp: View {
var body: some View {
  Text("Sign up")
      .font(.headline)
      .padding()
}
}

struct Login: View {
var body: some View {
  Text("Login")
      .font(.headline)
      .padding()
}
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Text("Hola prueba splash")
                .foregroundColor(Color.white)
                .font(.system(size: 30))
        }
    }
}

struct oulineButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .frame(width: 300, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
