//
//  Quizlet_ishApp.swift
//  Shared
//
//  Created by Diya Chakraborti on 4/14/22.
//

import SwiftUI
import Firebase

@main
struct Quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
        AuthenticationService.signIn()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    
}
