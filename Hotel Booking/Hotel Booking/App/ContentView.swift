//
//  ContentView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 14/03/24.
//

import SwiftUI
import CoreData

struct ContentView: View {


    var body: some View {
        MainTabView()
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
