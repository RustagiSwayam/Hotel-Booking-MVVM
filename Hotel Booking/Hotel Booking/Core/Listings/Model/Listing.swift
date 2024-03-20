//
//  Listing.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 17/03/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable{  //it has to be Hashable do be used in a foreach.
    let id: String
    let ownerID: String
    let ownerUsername: String
    let ownerImageURL: String
    let numOfBathrooms: Int
    let numOfBedrooms: Int
    let numOfGuests: Int
    let numOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var ammenities: [ListingAmmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Hashable, CodingKey, Identifiable, Codable{
    case selfCheckin
    case superHost
    
    var imageName: String{
        switch self{
        case .selfCheckin: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String{
        switch self{
        case .selfCheckin: return "Self Check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String{
        switch self{
        case .selfCheckin: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, high rated hosts who are commited to providing great stays"
        }
    }
    
    var id: Int {return self.rawValue}
}

enum ListingAmmenities: Int, Hashable, CodingKey, Identifiable, Codable{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String{
        switch self{
        case .alarmSystem : return "Alarm System"
        case .balcony : return "Balcony"
        case .kitchen: return "Kitchen"
        case .laundry: return "Laundary"
        case .office: return "Office"
        case .pool: return "Pool"
        case .tv: return "TV"
        case .wifi: return "WiFi"
        }
    }
    
    var imageName: String{
        switch self{
        case .alarmSystem : return "checkerboard.shield"
        case .balcony : return "building"
        case .kitchen: return "fork.knife"
        case .laundry: return "washer"
        case .office: return "pencil.and.ruler.fill"
        case .pool: return "figure.pool.swim"
        case .tv: return "tv"
        case .wifi: return "wifi"
        }
    }
    
    var id: Int {return self.rawValue}
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townhouse
    case villa
    
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townhouse: return "Townhouse"
        case .villa: return "Villa"
        }
    }
    
    var id: Int {return self.rawValue}
}

