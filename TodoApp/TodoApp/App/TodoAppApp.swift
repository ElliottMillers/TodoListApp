//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Elliott on 09.12.2024.
//

import SwiftUI
import FirebaseCore
@main
struct TodoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView() 
        }
    }
}
