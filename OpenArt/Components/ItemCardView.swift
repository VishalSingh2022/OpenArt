//
//  ItemCardView.swift
//  OpenArt
//
//  Created by Vishal Singh on 08/11/22.
//

import SwiftUI

struct ItemCardView: View {
    
    // MARK: - Properties

    @Binding var item: Item
    var creator: String
    var creatorIcon: String

    // MARK: - Body

    var body: some View {
        VStack {
            // Item Card
            VStack(alignment: .leading) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 11)
                    
                Text(item.title)
                    .font(.custom(Constants.Fonts.epilogueBold, fixedSize: 24))
                
                HStack(alignment: .center) {
                    ZStack(alignment: .topTrailing) {
                        Image(creatorIcon)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                        
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.red)
                            .background(
                                Circle()
                                    .stroke(.white, lineWidth: 3)
                            )
                        
                            
                    }
                    .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text(creator)
                            .font(.custom(Constants.Fonts.epilogueBold, fixedSize: 18))
                        Text(Constants.Texts.creator)
                            .font(.custom(Constants.Fonts.epilogueMedium, fixedSize: 14))
                            .foregroundColor(Constants.Colors.grayWhiteColor)
                    }
                    .padding(.leading, 4)
                    
                    Spacer()
                    
                    // Like Button
                    Image(systemName: item.liked ? Constants.Images.heartFill : Constants.Images.heart)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(item.liked ? .red : Constants.Colors.grayWhiteColor)
                        .onTapGesture {
                            withAnimation {
                                item.liked.toggle()
                            }
                        }
                }
                .padding(.bottom, 17)
                .padding(.trailing, 22)
            }
            .padding(.horizontal, 11)
            .frame(maxWidth: .infinity)
            .background(Constants.Colors.itemColor)
            .cornerRadius(32)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 1)

            ItemPriceView(itemPrice: item.price)
                .padding(.top, 12)
                .padding(.bottom, 40)
          
        }
        .padding(.horizontal, 16)
        
    }
}
    // MARK: - Preview
struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView(
            item: .constant(Item(title: "George", image: "george", price: "2.00 ETH")),
            creator: "Kendy Yanko",
            creatorIcon: "kendy"
        )
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
            .padding(.top)
    }
}
