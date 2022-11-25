//
//  PostViewModel.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 24/11/22.
//

import Foundation
//
//class PostViewModel: ObservableObject {
//
//    @Published var authenticated = 0
//
//    let userEmail = "eve.holt@reqres.in"
//    let userPssw = "cityslicka"
//    let userToken = "QpwL5tke4Pnpja7X4"
//    
//    init(){
//        login(email: userEmail, pssw: userPssw)
//    }
//    
//    func login(email: String, pssw: String) {
//        guard let url = URL(string: "https://reqres.in/api/login") else { return }
//        let parametros = ["email": email, "password": pssw]
//        let body = try! JSONSerialization.data(withJSONObject: parametros)
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = body
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let response = response {
//                print(response)
//            }
//        }.resume()
//    }
//
//}
