//
//  Login.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 25/11/22.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var pssw = ""
    @EnvironmentObject var login : PVModel
    
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Email").foregroundColor(.white).bold()
                TextField("Email", text: $email)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                Text("Password").foregroundColor(.white).bold()
                SecureField("Password", text: $pssw)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action:{
                    login.login(email: email, pssw: pssw)
                }){
                    Text("Entrar").foregroundColor(.white).bold()
                }
            }.padding()
        }
    }
}

