//
//  ExploreView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 15/03/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject private var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel) //the explore will show what DestinationSearchView demands.
            }else{
                ScrollView{
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32){
                        ForEach(viewModel.listings){listing in
                            NavigationLink(value: listing){
                                ListingView(listing: listing)
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self){listing in //shows listing detail view for the particular listing
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden() //hides the ugly back button
                }
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
