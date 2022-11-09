//
//  FilterCreatorButton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FilterCreatorButton: View {
    // MARK: - Properties
    @State var title = Constants.Texts.featureCreator
    @Binding var isSelected: Bool

    // MARK: - Body

    var body: some View {
        Text(title)
            .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
            .padding(.top, 12)
            .padding(.horizontal, 20)
            .padding(.bottom, 8)
            .foregroundColor(isSelected ? .white : .black)
            .background(isSelected ? Constants.Colors.blueLinearGradientColor : Constants.Colors.notSelectedCreatorColor)
            .clipShape(Capsule())
    }
}

    // MARK: - Preview

struct FilterCreatorButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterCreatorButton(isSelected: .constant(false))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
