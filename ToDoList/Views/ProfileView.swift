//
//  ProfileView.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 23/02/2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
                VStack(alignment: .leading) {
                    if let user = viewModel.user {
                        profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
        
        @ViewBuilder
        func profile(user: User) -> some View {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member since
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            
            HStack {
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        //.padding()
        
        // Sign out
        Button("Log Out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
        }
}

#Preview {
    ProfileView()
}
