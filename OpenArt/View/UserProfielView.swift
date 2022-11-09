//
//  UserProfielView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct UserProfielView: View {
    
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    let user: User
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack {
                BackButton()
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                
                Spacer()
            }
            .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ZStack(alignment: .topTrailing) {
                        InfoView(creator: nil, user: user)
                        
                        HStack(spacing: 8){
                            CircleButtton(title: Constants.Images.ellipsis, showingCircleStroke: false)
                            CircleButtton(title: Constants.Images.share, showingCircleStroke: false)
                        }
                        .padding(.top, 10)
                        .padding(.trailing, 16)
                    }
                    .padding(.bottom, -43)
                    
                    Group {
                        HStack {
                            FollowingView(numbers: Constants.Texts.followingNumber, title: Constants.Texts.following)
                            
                            Spacer()
                            
                            FollowingView(numbers: Constants.Texts.followerNumber, title: Constants.Texts.followers)
                            
                            Spacer()
                            
                            FollowButton(userFollowButton: true)
                        }
                        
                        FollowedByView()
            
                        // Introduction Text
                        Text(Constants.Texts.userIntroduction)
                            .lineSpacing(10)
                            .font(.custom(Constants.Fonts.epilogueMedium, size: 13))
                            .foregroundColor(Constants.Colors.grayWhiteColor)
                            
                            
                            .multilineTextAlignment(.leading)
                            
                        
                        Text(Constants.Texts.memberSince2022)
                            .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 30)
                        
                        
                        SocialMediaLinkView(socialMedias: user.socialMedia)
                            .padding(.top, 15)
                           
                        
                        HStack(spacing: 35) {
                            Text(Constants.Texts.created)
                                .font(.custom(Constants.Fonts.epilogueBold, size: 24))
                            
                            Text(Constants.Texts.collected)
                                .font(.custom(Constants.Fonts.epilogueBold, size: 24))
                                .foregroundColor(.gray)
                            
                            Spacer()
                        }
                        .padding(.top, 40)
                        .padding(.bottom, 24)
                        
                    }
                    .padding(.horizontal, 16)
                    
                    ForEach(user.items) { item in
                        ItemCardView(item: item, creator: user.userName, creatorIcon: user.userImage)
                    }
                    
                    // Load More Button
                    LoadMoreButton(showingImage: true)
                    
                    // Footer View
                    FooterView()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Constants.Colors.backgroundColor)
    }
}

    // MARK: - Preview

struct UserProfielView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfielView(user: User.userData)
    }
}
