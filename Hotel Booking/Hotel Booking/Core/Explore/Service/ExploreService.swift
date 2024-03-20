//
//  ExploreService.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 17/03/24.
//

import Foundation

class ExploreService{
    func fetchListings() async throws -> [Listing]{ //will return us array of listings
        return DeveloperPreview().listings
    }
}
