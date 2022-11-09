//
//  ItemPriceView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct ItemPriceView: View {
    
    // MARK: - Properties

    var itemPrice: String
    
    // MARK: - Body

    var body: some View {
        HStack {
            Text(Constants.Texts.soldFor)
                .font(.custom(Constants.Fonts.epilogueRegular, size: 20))
                .foregroundColor(Constants.Colors.grayWhiteColor)
            +
            Text(itemPrice)
                .font(.custom(Constants.Fonts.epilogueBold, size: 24))
                .foregroundColor(Constants.Colors.grayWhiteColor)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
        .background(Constants.Colors.itemColor)
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}
    // MARK: - Preview
struct ItemPriceView_Previews: PreviewProvider {
    static var previews: some View {
        ItemPriceView(itemPrice: "2.0 ETH")
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
            .padding(.horizontal, 16)
            .padding(.vertical)
    }
}
