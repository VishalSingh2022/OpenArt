//
//  HeaderView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties

    @StateObject private var userViewModel = UserViewModel()
    // MARK: - Body

    var body: some View {
        HStack {
            // Logo
            LogoView()
            
            Spacer()
            
            // User
            NavigationLink(
                destination: UserProfielView(user: userViewModel.user)
                    .navigationBarHidden(true)
                
            ) {
                Image(Constants.Images.user)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .stroke(Constants.Colors.userStrokeColor, lineWidth: 3)
                    )
                    .offset(y: -4)
            }
        }
        .padding(.horizontal, 16)
        .background(Constants.Colors.backgroundColor)
    }
}

    // MARK: - Preview

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
