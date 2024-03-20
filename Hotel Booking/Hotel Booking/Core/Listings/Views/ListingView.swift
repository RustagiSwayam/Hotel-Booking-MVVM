//
//  ListingView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 15/03/24.
//

import SwiftUI

struct ListingView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack{
            //images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
            
            //listing detail
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .foregroundStyle(.black)
                    Text("12km away")
                        .foregroundStyle(.gray)
                    Text("Nov 2 - 10 ")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$\(listing.pricePerNight)")
                            .bold()
                        Text("per night")
                    }
                    .foregroundStyle(.black)
                    
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingView(listing: DeveloperPreview().listings[0])
}
