//
//  DiscoverCreatorView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct DiscoverCreatorView: View {
    
    // MARK: - Properties
    
    @State private var featureCreatorSelected: Bool = true
    @State private var allFeatureSelected: Bool = false
    @StateObject var creatorViewModel = CreatorViewModel()
    
    // MARK: - Body

    var body: some View {
        VStack {
            // Header View
            HeaderView()
        
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(alignment: .center) {
                    Text(Constants.Texts.discoverTitle)
                            .font(.custom(Constants.Fonts.epilogueBold, size: 20))
                            .padding(.top, 30)
                            .padding(.bottom, 16)
                        
                    Text(Constants.Texts.discoversubtitle)
                            .font(.custom(Constants.Fonts.epilogueRegular, size: 16))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 40)
                    
                    HStack(spacing: 8) {
                        // Feature Creator Button
                        Button {
                            allFeatureSelected = false
                            featureCreatorSelected = true
                        } label: {
                            FilterCreatorButton(title: Constants.Texts.featureCreator, isSelected: $featureCreatorSelected)
                        }

                        // All Creator Button
                        Button {
                            allFeatureSelected = true
                            featureCreatorSelected = false
                        } label: {
                            FilterCreatorButton(title: Constants.Texts.allCreator, isSelected: $allFeatureSelected)
                        }
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                   
                  
             
                    // Creators Views
                    LazyVStack(spacing: 40) {
                        ForEach(creatorViewModel.creators) { creator in
                            NavigationLink(
                                destination: CreatorProfileView(creator: creator)
                                    .navigationBarHidden(true)
                            ) {
                                CreatorCardView(creator: creator)
                                    .foregroundColor(Constants.Colors.primaryColor)
                            }
                        }
                    }
                    
                    // Load More Button
                    LoadMoreButton()
                    
                    // Footer View
                    FooterView()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Constants.Colors.backgroundColor)
       
    }
    
}

    // MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverCreatorView()
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
        }
    }
}
