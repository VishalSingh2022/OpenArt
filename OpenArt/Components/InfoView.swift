//
//  InfoView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct InfoView: View {
    // MARK: - Properties
    let creator: Creator?
    let user: User?
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image((creator?.creatorBackgroundImage ?? user?.userBackgroundImage)!)
                .resizable()
                .frame(height: 160)
                .frame(maxWidth: .infinity)
            
            VStack(alignment: .center) {
                Image((creator?.creatorImage ?? user?.userImage)!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                    .background(
                        Circle()
                            .stroke(Constants.Colors.primaryColor, lineWidth: 3)
                    )
                
                Text((creator?.creatorName ?? user?.userName)!)
                    .font(.custom(Constants.Fonts.epilogueBold, size: 18))
                    .padding(.top, 8)
                
                
                HStack(spacing: 0) {
                    
                    // User Computer Generated Id
                    Text(Constants.Texts.userUniqueId)
                        .font(.custom(Constants.Fonts.epilogueMedium, size: 13))
                        .foregroundColor(Constants.Colors.grayWhiteColor)
                    
                    // copy and paste icon
                    Image(systemName: Constants.Texts.copyAndPaste)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Constants.Colors.grayWhiteColor)
                        .frame(width: 14, height: 14)
                }
            }
            .offset(y: -70)
        }
    }
}

    // MARK: - Preview

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView(creator: Creator.creatorData[0], user: nil)
                .previewLayout(.sizeThatFits)
            
            InfoView(creator: nil, user: User.userData)
                .previewLayout(.sizeThatFits)
        }
    }
}
