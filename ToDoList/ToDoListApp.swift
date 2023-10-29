//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 28.10.2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    // @StateObject manages the lifetime of a data model within the application.
    // This object is created when the application is launched and lives throughout the entire application.
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            // Here, listViewModel is made available for use throughout the entire application,
            // so that it can be accessed from ListView or other views.
            .environmentObject(listViewModel)
        }
    }
}
