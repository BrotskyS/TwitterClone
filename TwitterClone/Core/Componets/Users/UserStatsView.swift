//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 15.03.2022.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("128")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
            }
            
            HStack{
                Text("8.9 M")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
