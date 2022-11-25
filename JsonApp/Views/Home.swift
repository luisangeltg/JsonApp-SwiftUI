//
//  Home.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 25/11/22.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login: PVModel
    @StateObject var json = Modelo1ViewModel()

    var body: some View {
        NavigationView {
            if json.datosModelo.isEmpty {
                ProgressView()
            } else {
                List(json.datosModelo, id: \.id) { item in
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.email)
                    }
                }
                    .navigationBarTitle("JSON")
                    .navigationBarItems(
                    leading: Button(
                        action: {
                            login.authenticated = 0
                            UserDefaults.standard.removeObject(forKey: "session")
                        }
                    ) {
                        Text("Salir")
                    },
                    trailing: NavigationLink(destination: Home2()){
                        Text("Home 2")
                    }
                )
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
