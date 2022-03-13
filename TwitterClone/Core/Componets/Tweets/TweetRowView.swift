//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 13.03.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Sergiy Brotsky")
                            .font(.subheadline).bold()
                        Text("@sergiyBrotsky")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("I love Ukraine!")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
            }
            
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                })
                
                
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
