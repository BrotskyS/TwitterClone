//
//  FweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Sergiy Pik on 15.03.2022.
//

import SwiftUI
import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
