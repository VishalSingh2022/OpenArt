//
//  FollowButton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FollowButton: View {
    
    // MARK: - Properties
    
    var userFollowButton: Bool = false
    
    // MARK: - Body

    var body: some View {
        Text(Constants.Texts.follow)
            .font(.custom(Constants.Fonts.epilogueBold, size: 16))
            .foregroundColor(Constants.Colors.primaryColor)
            .frame(width: 112, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(userFollowButton ? Constants.Colors.itemColor : Constants.Colors.backgroundColor)
            )
            .shadow(color: .black.opacity(0.1), radius: 0.5, x: 0, y: 1)
    }
}

    // MARK: - Preview
struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
