//
//  FollowingView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FollowingView: View {
    
    // MARK: - Properties

    var numbers: String
    var title: String
    
    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading) {
            Text(numbers)
                .font(.custom(Constants.Fonts.epilogueBold, size: 32))
            
            Text(title)
                .font(.custom(Constants.Fonts.epilogueBold, size: 16))
                .opacity(0.6)
            
        }
    }
}
    // MARK: - Preview

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(numbers: Constants.Texts.followingNumber, title: Constants.Texts.following)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
