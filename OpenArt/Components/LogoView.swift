//
//  LogoView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text(Constants.Texts.open)
                .font(.custom(Constants.Fonts.epilogueLight, size: 39))
            
            Image(Constants.Images.logo)
                .resizable()
                .scaledToFit()
                .frame(height: 37)
                .offset(y: -4)
        }
    }
}
    
    // MARK: - Preview

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
