//
//  RegisterView.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 23/02/2025.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organising todos", angle: -15, background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
