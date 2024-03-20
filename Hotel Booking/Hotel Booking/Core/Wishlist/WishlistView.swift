//
//  WishlistView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 16/03/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Login to view your wishlists")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("Once logged in, you can view, edit or delete your wishlists")
                        .font(.caption)
                }
                
                Button{
                    print("login process")
                }label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
