//
//  PVModel.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 24/11/22.
//

import Foundation

class PVModel: ObservableObject {

    @Published var authenticated = 0

    let userEmail = "eve.holt@reqres.in"
    let userPssw = "cityslicka"
    let userToken = "QpwL5tke4Pnpja7X4"

    init() {
        if let session = UserDefaults.standard.object(forKey: "session") as? Int {
            authenticated = session
        }else{
            authenticated = 0
        }
    }

    func login(email: String, pssw: String) {
        guard let url = URL(string: "https://reqres.in/api/login") else { return }
        let parametros = ["email": email, "password": pssw]
        let body = try! JSONSerialization.data(withJSONObject: parametros)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let response = response {
//                print(response)
//                print("Autenticado")
//            }

            guard let data = data else { return }
            
            do {
                let datos = try JSONDecoder().decode(PostModel.self, from: data)
                if !datos.token.isEmpty{
                    DispatchQueue.main.async {
                        self.authenticated = 1
                        UserDefaults.standard.setValue(1, forKey: "session")
                    }
                }
            }catch let error as NSError {
                print("Error al hacer post", error.localizedDescription)
                DispatchQueue.main.async {
                    self.authenticated = 2
                    //UserDefaults.standard.setValue(2, forKey: "session")
                }
            }
        }.resume()
    }

}
