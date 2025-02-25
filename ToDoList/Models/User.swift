//
//  User.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 23/02/2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
