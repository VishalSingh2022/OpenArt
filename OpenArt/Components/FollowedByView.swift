//
//  FollowedByView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct FollowedByView: View {
    
    // MARK: - Properties

    
    // MARK: - Body

    var body: some View {
        VStack {
            Text(Constants.Texts.followedBy)
                .font(.custom(Constants.Fonts.epilogueRegular, size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 29)
            
            HStack {
                ForEach(Constants.textArrays.followedBy.indices, id: \.self) { index in
                    Image(Constants.textArrays.followedBy[index])
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .stroke(.white, lineWidth: 2)
                    )
                    .offset(x:  CGFloat(-12 * index))

            }
                Spacer()
            }
            .padding(.top, 9)
            .padding(.bottom, 28)
        }
    }
}

    // MARK: - Preview
struct FollowedByView_Previews: PreviewProvider {
    static var previews: some View {
        FollowedByView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
