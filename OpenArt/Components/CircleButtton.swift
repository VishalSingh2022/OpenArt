//
//  CircleButtton.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct CircleButtton: View {
    
    // MARK: - Properties

    var title: String
    var showingCircleStroke: Bool = true
    
    // MARK: - Body

    var body: some View {
        Image(systemName: title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 40, height: 40)
            .foregroundColor(Constants.Colors.primaryColor)
            .background(showingCircleStroke ? .clear : Constants.Colors.backgroundColor)
            .clipShape(Circle())
            .background(
                Circle()
                    .stroke(Constants.Colors.primaryColor, lineWidth: showingCircleStroke ? 1 : 0)
            )
            .shadow(color: Color.black.opacity(0.2), radius: showingCircleStroke ? 0 : 6, x: 0, y: 1)
    }
}

    // MARK: - Preview
struct CircleButtton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtton(title: Constants.Images.ellipsis)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
