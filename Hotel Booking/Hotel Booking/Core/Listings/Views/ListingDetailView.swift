//
//  ListingDetailView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 15/03/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    let listing: Listing
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                                Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("\(listing.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)- ")
                        
                        Text("45 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment: .leading){
                    Text("Entire villa hosted by \(listing.ownerUsername)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("\(listing.numOfGuests) guests -")
                        Text("\(listing.numOfBedrooms) bedroom -")
                        Text("\(listing.numOfBeds) beds -")
                        Text("\(listing.numOfBathrooms) bath ")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("indian-male")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features, id: \.self){feature in
                    HStack{
                        Image(systemName: "\(feature.imageName)")
                        VStack(alignment: .leading){
                            Text("\(feature.title)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("\(feature.subtitle)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
            
            Divider()
            
            //functionalities
            VStack(alignment: .leading){
                Text("Where you'll sleep")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1...listing.numOfBeds, id: \.self){bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 120)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }
            .padding()
            
            Divider()
            
            //listing ammenities
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ForEach(listing.ammenities, id: \.self){ammenity in
                    HStack{
                        Image(systemName: "\(ammenity.imageName)")
                        Text("\(ammenity.title)")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.caption)
                            .fontWeight(.semibold)
                        
                        Text("Oct 15 - 16")
                            .font(.footnote)
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    //reserve button
                    Button{
                        //reserve action
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .padding()
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview().listings[3])
}
