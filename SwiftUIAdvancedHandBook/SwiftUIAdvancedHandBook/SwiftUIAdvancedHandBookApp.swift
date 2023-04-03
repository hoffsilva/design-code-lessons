//
//  SwiftUIAdvancedHandBookApp.swift
//  SwiftUIAdvancedHandBook
//
//  Created by Hoff Silva on 2023-04-03.
//

import SwiftUI
import Firebase

@main
struct SwiftUIAdvancedHandBookApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
