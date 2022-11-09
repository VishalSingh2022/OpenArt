//
//  BackButton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct BackButton: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        Image(systemName: Constants.Images.chevronLeft)
            .font(.title3)
            .fontWeight(.semibold)
            .padding(12)
            .foregroundColor(Constants.Colors.primaryColor)
            .background(Constants.Colors.itemColor)
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 1)
    }
}

    // MARK: - Preview

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
