//
//  MainTabView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 16/03/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
        .accentColor(.pink)
    }
}


#Preview {
    MainTabView()
}
