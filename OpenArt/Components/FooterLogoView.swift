//
//  FooterLogoView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FooterLogoView: View {
    
    // MARK: - Properties
    

    // MARK: - Body

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text(Constants.Texts.openFirstLetterCapital)
                .font(.custom(Constants.Fonts.epilogueLight, size: 39))
            
            Image(Constants.Images.logo)
                .resizable()
                .scaledToFit()
                .frame(height: 37)
        }
    }
}

    // MARK: - Preview

struct FooterLogoView_Previews: PreviewProvider {
    static var previews: some View {
        FooterLogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
