//
//  SocialMediaLinkButton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct SocialMediaLinkButton: View {
    
    // MARK: - Properties
    
    var image: String
    var title: String
    
    // MARK: - Body

    var body: some View {
        HStack(spacing: 5) {
            
            Image(image)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(Constants.Colors.primaryColor)
                
            Text(title)
                .font(.custom(Constants.Fonts.epilogueBold, size: 16))
                .lineLimit(1)
                .fixedSize()
                
        }
        .padding(.top, 10)
        .padding(.leading, 11)
        .padding(.trailing, 14)
        .padding(.bottom, 6)
        .background(
            Capsule()
                .fill(Constants.Colors.itemColor)
        )
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
    }
}

    // MARK: - Preview
struct SocialMediaLinkButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaLinkButton(image: Constants.Texts.twitter, title: Constants.Texts.openArt)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
            .padding()
    }
}
