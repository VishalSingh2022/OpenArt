//
//  CreatorProfileView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct CreatorProfileView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var creator: Creator

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
                InfoView(creator: creator, user: nil)
                
                
                VStack {
                    HStack {
                        ImageAndTextView(image: Constants.Images.mail, title: creator.mailAddress)
                        
                        Spacer()
                        
                        Image(systemName: Constants.Images.pencil)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(12)
                            .background(Constants.Colors.editButtonColor)
                            .clipShape(Circle())
                    }
                    .padding(.top, 12)
                    .padding(.bottom, 4)

                    
                    ImageAndTextView(image: Constants.Images.website, title: creator.linkdin)
                    
                    ImageAndTextView(image: Constants.Images.phone, title: creator.contactNumber)
                        .padding(.top, 16)
                    
                    ImageAndTextView(image: Constants.Images.link, title: Constants.Texts.openArtDesign)
                        .padding(.top, 16)
                    
                    
                    HStack(spacing: 13) {
                        Spacer()
                        
                        HStack(spacing: 8){
                            Image(systemName: Constants.Images.heart)
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(Constants.Texts.follow)
                                .font(.custom(Constants.Fonts.epilogueBold, size: 16))
                        }
                        .padding(.horizontal, 30)
                        .padding(.vertical, 8)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Constants.Colors.primaryColor, lineWidth: 1)
                        )
                        
                        CircleButtton(title: Constants.Images.share)
                        
                        CircleButtton(title: Constants.Images.ellipsis)
                        
                        Spacer()
                    }
                    .padding(.top, 32)
                    
                    Text(Constants.Texts.memberSince2022)
                        .font(.custom(Constants.Fonts.epilogueMedium, size: 13))
                        .foregroundColor(Constants.Colors.grayWhiteColor)
                        .padding(.bottom, 21)
                        .padding(.top, 19)

                }
                .padding(.leading, 22)
                .padding(.trailing, 12)
                .background(Constants.Colors.itemColor)
                .clipShape(RoundedRectangle(cornerRadius: 32))
                .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 1)
                .padding(.horizontal, 16)
                .padding(.bottom, 66)
                .padding(.top, -50)
                
                
                
                Text(Constants.Texts.myItems)
                    .font(.custom(Constants.Fonts.epilogueBold, size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                
                
                // Item For Sale
                ForEach($creator.items) { $item in
                    ItemCardView(item: $item, creator: creator.creatorName, creatorIcon: creator.creatorImage)
                }
                
                // Load More Button
                LoadMoreButton(showingImage: false)
                   
                // Footer View
                FooterView()
            }
            .padding(.top, 8)
           
        
        }
        .background(Constants.Colors.backgroundColor)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CreatorProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorProfileView(creator: .constant(Creator.creatorData[0]))
    }
}
