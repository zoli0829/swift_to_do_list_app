//
//  ContentView.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 17/02/2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", image: "house")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", image: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
