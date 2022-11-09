//
//  CreatorCardView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct CreatorCardView: View {
    
    // MARK: - Properties
    
    @State var creator: Creator
    
    @State private var followButtonTapped: Bool = false
    
    // MARK: - Body

    var body: some View {
        VStack {
            Image(creator.creatorBackgroundImage)
                .resizable()
                .frame(height: 135)
                .frame(maxWidth: .infinity)
            
            
            Image(creator.creatorImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(.white, lineWidth: 6)
                )
                .offset(y: -55)
            
            VStack(spacing: 8) {
                Text(creator.creatorName)
                    .font(.custom(Constants.Fonts.epilogueBold, size: 24))
                
                Text(creator.creatorIntroduction)
                    .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
            }
            .padding(.top, -48)
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
            
            HStack {
                HStack(alignment: .bottom, spacing: 0) {
                    Text(String(creator.creatorFollower))
                        .font(.custom(Constants.Fonts.epilogueBold, size: 32))
                    
                    Text(Constants.Texts.followers)
                        .font(.custom(Constants.Fonts.epilogueMedium, size: 16))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Button {
                    withAnimation {
                        if !followButtonTapped {
                            creator.creatorFollower += 1
                            followButtonTapped = true
                        } else {
                            creator.creatorFollower -= 1
                            followButtonTapped = false
                        }
                    }
                } label: {
                    FollowButton()
                }
                
                

            }
            .padding(.horizontal, 16)
            .padding(.bottom, 17)
        }
        .background(Constants.Colors.itemColor)
        .frame(maxWidth: .infinity)
        .cornerRadius(24)
        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 1)
        .padding(.horizontal, 16)
    }
}

    // MARK: - Preview

struct CreatorCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorCardView(creator: Creator.creatorData[0])
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
           
    }
}
