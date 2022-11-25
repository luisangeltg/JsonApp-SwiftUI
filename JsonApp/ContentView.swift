//
//  ContentView.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login: PVModel

    var body: some View {
        Group{
            if login.authenticated == 0 {
                Login()
            }else if login.authenticated == 1 {
                Home()
            } else if login.authenticated == 2 {
                VStack{
                    Text("Usuario y/o contraseña incorrecta")
                    Button(action:{
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
