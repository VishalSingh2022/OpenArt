//
//  UserViewModel.swift
//  OpenArt
//
//  Created by Vishal Singh on 09/11/22.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var user: User = User.userData
}
