//
//  OpenArtApp.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

@main
struct OpenArtApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DiscoverCreatorView()
            }
        }
    }
}
