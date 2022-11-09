//
//  LoadMoreButton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct LoadMoreButton: View {
    
    // MARK: - Properties

    var showingImage: Bool = true
    
    // MARK: - Body

    var body: some View {
        Button {} label: {
            HStack {
                if showingImage {
                    Image(systemName: Constants.Images.plus)
                        .font(.title2)
                        .bold()
                        .offset(y: -2)
                }
                
                Text(Constants.Texts.loadMore)
                    .font(.custom(Constants.Fonts.epilogueBold, size: 20))
                
            }
            .frame(height: 56)
            .frame(maxWidth: .infinity)
            .foregroundColor(Constants.Colors.primaryColor)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Constants.Colors.blueLinearGradientColor, lineWidth: 1)
            )
        }
        .padding(.top, 43)
        .padding(.horizontal, 35)
        .padding(.bottom, 108)
    }
}

    // MARK: - Preview

struct LoadMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        LoadMoreButton()
            .previewLayout(.sizeThatFits)
    }
}
