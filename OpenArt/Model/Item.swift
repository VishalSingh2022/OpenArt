//
//  Item.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import Foundation

struct Item: Identifiable {
    let id = UUID().uuidString
    let title: String
    let image: String
    let price: String
    var liked: Bool = false
}
