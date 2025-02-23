//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 17/02/2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
