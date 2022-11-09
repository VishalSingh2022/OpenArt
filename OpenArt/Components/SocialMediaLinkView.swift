//
//  SocialMediaLinkView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct SocialMediaLinkView: View {
    
    // MARK: - Properties
    
    var socialMedias: [SocialMedia]
    
    // MARK: - Body

    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 134), spacing: 10)], alignment: .leading, spacing: 10) {
            ForEach(socialMedias) { socialMedia in
                SocialMediaLinkButton(image: socialMedia.image, title: socialMedia.title)
            }
        }
        .padding(.trailing, 32)
    }
}


    // MARK: - Preview

struct SocialMediaLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaLinkView(socialMedias: SocialMedia.socialMediaData)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
