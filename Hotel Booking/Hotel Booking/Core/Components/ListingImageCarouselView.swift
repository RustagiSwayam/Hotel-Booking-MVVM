//
//  ListingImageCarouselView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 15/03/24.
//

import SwiftUI

struct ListingImageCarouselView: View {

    let listing: Listing
    
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview().listings[0])
}
