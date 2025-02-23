//
//  TLButton.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 23/02/2025.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        // Action
    }
}
