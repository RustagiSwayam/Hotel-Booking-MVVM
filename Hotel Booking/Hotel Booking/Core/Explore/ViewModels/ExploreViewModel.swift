//
//  ExploreViewModel.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 17/03/24.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService){
        self.service = service
        
        Task{ await fetchListings()} //this will trigger the function below, ie populate the listings
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListings() //will wait for the function to return some listings
            self.listingsCopy = listings //this will keep a copy of the original listings(overall)
        }catch{
            print("Unable to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation(){
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings //this will take care that, some listing(our original listings) is always there. even if the location the user entered has no listing.
        
        //what this is doing is, if the desired listing is there, it shows and if it isnt, the overall listing is shown
    }
}
