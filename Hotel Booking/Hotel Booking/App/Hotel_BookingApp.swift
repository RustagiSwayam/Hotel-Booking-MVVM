//
//  Hotel_BookingApp.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 14/03/24.
//

import SwiftUI

@main
struct Hotel_BookingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
