//
//  Creator.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import Foundation


struct Creator: Identifiable {
    let id = UUID().uuidString
    let creatorName: String
    let creatorImage: String
    let creatorBackgroundImage: String
    let creatorIntroduction: String
    var creatorFollower: Int
    let mailAddress: String
    let linkdin: String
    let contactNumber: String
    var items: [Item]
}


    // MARK: Dummy Data 
extension Creator {
    static let creatorData: [Creator] = [
        Creator(
            creatorName: "Kendy Yanko",
            creatorImage: "kendy",
            creatorBackgroundImage: "kendyBackground",
            creatorIntroduction: "Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…",
            creatorFollower: 2024,
            mailAddress: "kendy@OpenArt.design",
            linkdin: "Linkdin",
            contactNumber: "(+60) 264 859 62",
            items: [
                Item(title: "Inside Kings Cross", image: "insideKingsCross", price: "2.00 ETH"),
                Item(title: "Silent Color", image: "silentColor5", price: "1.99 ETH"),
                Item(title: "George", image: "george", price: "5.00 ETH")
            ]
        ),
        Creator(
            creatorName: "Holly Herndon",
            creatorImage: "holly",
            creatorBackgroundImage: "hollyBackground",
            creatorIntroduction: "A family of artists in Ethiopia making art in the style of tizita- nostalgia and longing for the past.📍 Addis Ababa  …",
            creatorFollower: 1024,
            mailAddress: "holly@OpenArt.design",
            linkdin: "Linkdin",
            contactNumber: "(+56) 285 864 56",
            items: [
                Item(title: "Occean", image: "occean", price: "0.99 ETH"),
                Item(title: "George", image: "george", price: "1.50 ETH"),
                Item(title: "Silent Color", image: "silentColor4", price: "4.00 ETH")
            ]
        ),
        Creator(
            creatorName: "Addie Wagenknecht",
            creatorImage: "addie",
            creatorBackgroundImage: "addieBackground",
            creatorIntroduction: "Addie Wagenknecht and Aiala Hernando. Documentation of the End of the Worlds.",
            creatorFollower: 1099,
            mailAddress: "addie@OpenArt.design",
            linkdin: "Linkdin",
            contactNumber: "(+48) 859 264 26",
            items: [
                Item(title: "Silent Color", image: "silentColor3", price: "1.25 ETH"),
                Item(title: "Mirror", image: "mirror", price: "2.99 ETH"),
                Item(title: "Shedd Aquarium", image: "sheddAquarium", price: "0.50 ETH")
            ]
        ),
        Creator(
            creatorName: "Kinlaw",
            creatorImage: "kinlaw",
            creatorBackgroundImage: "kinlawBackground",
            creatorIntroduction: "Audio Composer,\nChoreographer,Vocalist + Scientist\n~Sigh of My Hand (1/3) is listed now ~\nmade in partnersh…",
            creatorFollower: 1058,
            mailAddress: "kinlaw@OpenArt.design",
            linkdin: "Linkdin",
            contactNumber: "(+69) 264 985 92",
            items: [
                Item(title: "Occean", image: "occean", price: "1.88 ETH"),
                Item(title: "Silent Color", image: "silentColor2", price: "2.14 ETH"),
                Item(title: "George", image: "george", price: "3.11 ETH")
            ]
        ),
        Creator(
            creatorName: "Jennifer Mehigan",
            creatorImage: "jennifer",
            creatorBackgroundImage: "jenniferBackground",
            creatorIntroduction: "LOW POLY GODDESS / Jennifer Mehigan is an interdisciplinary artist whose work engages with abstract manifestations of de…",
            creatorFollower: 2044,
            mailAddress: "jennifer@OpenArt.design",
            linkdin: "Linkdin",
            contactNumber: "(+91) 6456 8595 72",
            items: [
                Item(title: "Silent Wave", image: "silentWave", price: "3.15 ETH"),
                Item(title: "George", image: "george", price: "2.90 ETH"),
                Item(title: "Silent Color", image: "silentColor1", price: "1.10 ETH")
            ]
        )
    ]
}










