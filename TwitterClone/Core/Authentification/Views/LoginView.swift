//
//  LoginView.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 16.03.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame( height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: .bottomRight))
            
            
            VStack(spacing: 40){
                
            }
            
            Spacer()
        }
        .ignoresSafeArea()
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
