//
//  AnimalAppApp.swift
//  AnimalApp
//
//  Created by Christina Trujillo on 9/7/23.
//

import SwiftUI
import FirebaseCore

@main
struct AnimalAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
