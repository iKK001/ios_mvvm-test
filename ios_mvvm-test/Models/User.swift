//
//  User.swift
//  MVVM_Test_KOS
//
//  Created by Stephan Korner on 02.08.2023.
//

import Foundation

struct User: Action, Codable {
    let name: String
    let email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

protocol Action {
    
}

extension Action {
    
    static var defaultUsers: [User] {
        return [
            User(name: "Tom", email: "tom@google.com"),
            User(name: "Mike", email: "mike@google.com"),
            User(name: "Sarah", email: "sarah@google.com"),
            User(name: "Claudia", email: "claudia@google.com"),
            User(name: "Peter", email: "peter@google.com"),
            User(name: "Doris", email: "doris@google.com")
        ]
    }
}


