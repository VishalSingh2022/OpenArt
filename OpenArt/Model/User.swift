//
//  User.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import Foundation

struct User {
    let userName: String
    let userImage: String
    let userBackgroundImage: String
    var items: [Item]
    let socialMedia: [SocialMedia]
}


struct SocialMedia: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}

    // MARK: Dummy Data
extension User {
    static let userData: User = User(
        userName: "Gift Habeshaw",
        userImage: "user",
        userBackgroundImage: "userBackground",
        items: [
            Item(title: "Inside Kings Cross", image: "insideKingsCross", price: "2.00 ETH"),
            Item(title: "Silent Color", image: "silentColor5", price: "1.99 ETH"),
            Item(title: "George", image: "george", price: "5.00 ETH")
        ],
        socialMedia: SocialMedia.socialMediaData
    )
}

extension SocialMedia {
    static let socialMediaData: [SocialMedia] = [
        SocialMedia(image: "twitter", title: "@openart"),
        SocialMedia(image: "instagram", title: "@openart.design"),
        SocialMedia(image: "link", title: "Openart.design"),
    ]
}
