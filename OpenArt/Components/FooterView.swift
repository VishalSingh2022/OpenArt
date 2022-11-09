//
//  FooterView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FooterView: View {
    
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        VStack {
            // Logo & Text
            VStack(spacing: 4) {
                // Logo
                FooterLogoView()
                
                
                Text(Constants.Texts.the)
                    .font(.custom(Constants.Fonts.epilogueExtraLight, size:27))
                +
                Text(Constants.Texts.new)
                    .font(.custom(Constants.Fonts.epilogueLight, size:27))
                +
                Text(Constants.Texts.creative)
                    .font(.custom(Constants.Fonts.epilogueMedium, size:27))
                +
                Text(Constants.Texts.economy)
                    .font(.custom(Constants.Fonts.epilogueBold, size:27))
            }
            
            // Button
            VStack(spacing: 16) {
                Button {} label: {
                    Text(Constants.Texts.earnNow)
                        .font(.custom(Constants.Fonts.epilogueBold, size: 20))
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .background(Constants.Colors.blueLinearGradientColor)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                }
                
                // Discover More Button
                Button {} label: {
                    Text(Constants.Texts.discoverMore)
                        .font(.custom(Constants.Fonts.epilogueBold, size: 20))
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Constants.Colors.grayWhiteColor)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                }
            }
            .padding(.top, 29)
            .padding(.horizontal, 16)
            .padding(.bottom, 89)
            
            VStack {
                HStack(alignment: .top) {
                    
                    // Instagram, blog ... Button
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(Constants.textArrays.socialMediaTitle, id: \.self) { text in
                            Button {} label: {
                                Text(text)
                                    .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
                            }
                        }
                    }
                    
                    Spacer()
                    
                    // About, Help, Privacy... Button
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(Constants.textArrays.aboutUsMoreText, id: \.self) { text in
                            Button {} label: {
                                Text(text)
                                    .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
                            }
                        }
                    }
                }
                .padding(.top, 25)
                .padding(.leading, 17)
                .padding(.trailing, 12)
                
                Rectangle()
                    .frame(height: 1)
                    .background(.white)
                    .padding(.bottom, 30)
                
                // Copyright Text
                Text(Constants.Texts.copyrightText)
                    .font(.custom(Constants.Fonts.epilogueMedium, size: 13))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 28)
                    .padding(.leading, 17)
                
            }
            .foregroundColor(Color.white)
            .background(Constants.Colors.footerColor)
        }
        .background(Constants.Colors.backgroundColor)
    }
}

    // MARK: - Preview

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding(.top)
    }
}
