//
//  ImageAndTextView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct ImageAndTextView: View {
    
    // MARK: - Properties
    
    var image: String
    var title: String
    
    // MARK: - Body

    var body: some View {
        HStack(spacing: 13) {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
            Text(title)
                .font(.custom(Constants.Fonts.epilogueMedium, size: 13))
            
            Spacer()
        }
    }
}

    // MARK: - Preview
struct ImageAndTextView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndTextView(image: "envelope", title: "Contact@OpenArt.design")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
