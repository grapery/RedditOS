//
//  ListingVoteView.swift
//  RedditOs
//
//  Created by Thomas Ricouard on 09/07/2020.
//

import SwiftUI
import Backend

struct ListingVoteView: View {
    let listing: SubredditPost
    
    var body: some View {
        VStack(spacing: 2) {
            Button(action: {
                
            },
            label: {
                Image(systemName: "arrowtriangle.up.circle")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(listing.likes == true ? .accentColor : nil)
            }).buttonStyle(BorderlessButtonStyle())
            
            Text(listing.ups.toRoundedSuffixAsString())
                .fontWeight(.bold)
            
            Button(action: {
                
            },
            label: {
                Image(systemName: "arrowtriangle.down.circle")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(listing.likes == false ? .redditBlue : nil)
            }).buttonStyle(BorderlessButtonStyle())
        }.frame(width: 40)
    }
}

struct ListingVoteView_Previews: PreviewProvider {
    static var previews: some View {
        ListingVoteView(listing: static_listing)
    }
}
