//
//  CreatorViewModel.swift
//  OpenArt
//
//  Created by Vishal Singh on 09/11/22.
//

import SwiftUI

class CreatorViewModel: ObservableObject {
    @Published var creators: [Creator] = Creator.creatorData
    
}
