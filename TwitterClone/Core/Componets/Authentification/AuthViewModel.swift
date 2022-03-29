//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Sergiy Brotsky on 29.03.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSesion: FirebaseAuth.User?
    
    init(){
        self.userSesion = Auth.auth().currentUser
        
        print("DEBUG: usersesion init ")
    }
    func login(withEmail email: String, password: String){
        
    }
    func register(withEmail email: String, password: String, fullname: String, username: String){
        
    }
}
