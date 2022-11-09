//
//  Constants.swift
//  OpenArt
//
//  Created by Vishal Singh on 09/11/22.
//

import SwiftUI

struct Constants {
    
    // MARK: Colors
    struct Colors {
        static let backgroundColor = Color("backgroundColor")
        static let itemColor = Color("itemColor")
        static let footerColor = Color("footerColor")
        static let userStrokeColor = Color("userStrokeColor")
        static let primaryColor = Color("primaryColor")
        static let grayWhiteColor = Color("Gray&WhiteColor")
        static let editButtonColor = Color("EditButtonColor")
        
        // Linear Gradient Color
        static let blueLinearGradientColor = LinearGradient(colors: [Color(red: 0/255, green: 56/255, blue: 245/255), Color(red: 159/255, green: 3/255, blue: 255/255)], startPoint: .leading, endPoint: .trailing)
        static let notSelectedCreatorColor = LinearGradient(colors: [Color(red: 240/255, green: 240/255, blue: 240/255)], startPoint: .leading, endPoint: .trailing)
        
    }
    
    // MARK: Fonts
    struct Fonts {
        static let epilogueLight = "Epilogue-Light"
        static let epilogueBold = "Epilogue-Bold"
        static let epilogueMedium = "Epilogue-Medium"
        static let epilogueExtraLight = "Epilogue-ExtraLight"
        static let epilogueRegular = "Epilogue-Regular"
    }
    
    // MARK: Texts
    struct Texts {
        static let discoverTitle = "Discover Creator"
        static let featureCreator = "Feature Creator"
        static let allCreator = "All Creator"
        static let followers = "Followers"
        static let following = "Following"
        static let copyrightText = "© 2022 OpenArt"
        static let discoverMore = "Discover More"
        static let earnNow = "Earn Now"
        static let the = "The"
        static let new = "New"
        static let creative = "Creative"
        static let economy = "Economy"
        static let open = "open"
        static let openFirstLetterCapital = "Open"
        static let loadMore = "Load More"
        static let creator = "Creator"
        static let soldFor = "Sold For  "
        static let userUniqueId = "52fs5ge5g45sov45a"
        static let copyAndPaste = "square.on.square"
        static let follow = "Follow"
        static let followedBy = "Followed By"
        static let twitter = "twitter"
        static let openArt = "@openart"
        static let openArtDesign = "OpenArt.design"
        static let myItems = "My Items"
        static let memberSince2022 = "Member Since 2022"
        static let followingNumber = "150"
        static let followerNumber = "2024"
        static let created = "Created"
        static let collected = "Collected"
        static let discoversubtitle = "Follow at least five creators\nto build your feed…"
        static let userIntroduction = "Trevor Jackson is a multi-disciplinary artist exploring analog + digital realms since 1988. Collaborators inc Apple, BMW, Comme Des Garçons, ICA, NTS, Sonos,  Stone Island, Tate Modern + Warp."
    }
    
    // MARK: Images
    struct Images {
        static let user = "user"
        static let logo = "logo"
        static let plus = "plus"
        static let chevronLeft = "chevron.left"
        static let heartFill = "heart.fill"
        static let heart = "heart"
        static let ellipsis = "ellipsis"
        static let share = "square.and.arrow.up"
        static let phone = "phone"
        static let link = "link"
        static let website = "square.topthird.inset.filled"
        static let pencil = "pencil"
        static let mail = "envelope"
    }
    
    // MARK: TextArrays
    struct textArrays {
        static let aboutUsMoreText = ["About", "Community Guidelines", "Terms Of Service" , "Privacy", "Careers", "Help"]
        static let socialMediaTitle = ["Instagram", "Twitter", "Discord", "Blog"]
        static let followedBy = ["kendy", "holly", "addie", "kinlaw", "user"]
    }
    
}

