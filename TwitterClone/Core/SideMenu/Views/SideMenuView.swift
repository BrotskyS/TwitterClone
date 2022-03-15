//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 15.03.2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Sergiy Brotsky")
                        .font(.headline)
                    
                    Text("@Brotsky")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
                
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.self){ viewModel in
                if viewModel == .profile{
                    NavigationLink{
                        ProfileView()
                    }label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                } else if(viewModel == .logout){
                    Button{
                        print("logout")
                    }label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                }else{
                    SideMenuRowView(viewModel: viewModel)
                }
             
            }
            .padding(.vertical, 4)
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}



