//
//  DeveloperPreview.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 17/03/24.
//

import Foundation

class DeveloperPreview{
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Raj Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 2, numOfGuests: 2, numOfBeds: 3, pricePerNight: 232, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "6969 Street", city: "Janakpuri", state: "Delhi", title: "Janakpuri Villa", rating: 4.56, features: [.superHost, .selfCheckin], ammenities: [.balcony, .kitchen, .pool], type: .villa),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Ranbir Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 5, numOfGuests: 5, numOfBeds: 3, pricePerNight: 666, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "111 Street", city: "Karol Bagh", state: "Delhi", title: "KB Townhouse", rating: 4.56, features: [.superHost], ammenities: [.balcony, .kitchen, .pool, .alarmSystem, .office], type: .townhouse),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Randhir Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 1, numOfGuests: 1, numOfBeds: 3, pricePerNight: 1000, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "1299 Street", city: "Mehrouli", state: "Gurgaon", title: "Mehrouli House", rating: 4.56, features: [.superHost, .selfCheckin], ammenities: [.balcony, .kitchen, .pool], type: .house),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Sahil Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 3, numOfGuests: 3, numOfBeds: 3, pricePerNight: 190, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "877 Street", city: "DLF City", state: "Gurgaon", title: "DLF Townhouse", rating: 4.56, features: [.superHost], ammenities: [.balcony, .kitchen, .pool, .alarmSystem], type: .townhouse),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Swayam Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 4, numOfGuests: 4, numOfBeds: 3, pricePerNight: 500, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "009 Street", city: "Chattarpur", state: "Gurgaon", title: "Chattarpur Villa", rating: 4.56, features: [.superHost], ammenities: [.balcony, .kitchen, .pool, .laundry], type: .villa),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, ownerUsername:"Aditya Kapoor", ownerImageURL: "indian-male", numOfBathrooms: 4, numOfBedrooms: 5, numOfGuests: 5, numOfBeds: 3, pricePerNight: 120, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1", "listing2", "listing3", "listing4"], address: "167 Street", city: "Ghitorni", state: "Delhi", title: "Ghitorni Villa", rating: 4.56, features: [.superHost, .selfCheckin], ammenities: [.balcony, .kitchen, .pool, .tv], type: .villa),
    ]
}
