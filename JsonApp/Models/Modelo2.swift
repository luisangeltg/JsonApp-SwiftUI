//
//  Modelo2.swift
//  JsonApp
//
//  Created by Luis Angel Torres G on 25/11/22.
//

import Foundation


// MARK: - Modelo2
//struct Modelo2: Decodable {
//    let data: [User]
//}
//
//// MARK: - Datum
//struct User: Decodable {
//    let id: Int
//    let email, firstName, lastName: String
//    let avatar: String
//
//}

struct Modelo2 : Decodable {
    var data : [UserList]
}

struct User : Decodable {
    var data: UserList
}

struct UserList : Decodable {
    var id : Int
    var first_name : String
    var email : String
    var avatar : String
}
