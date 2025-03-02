//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Zoltan Vegh on 23/02/2025.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
