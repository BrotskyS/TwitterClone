//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 13.03.2022.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
