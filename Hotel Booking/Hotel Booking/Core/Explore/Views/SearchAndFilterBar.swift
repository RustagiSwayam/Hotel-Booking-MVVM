//
//  SearchAndFilterBar.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 15/03/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    
    @Binding var location: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2){
                Text(location.isEmpty ? "Where to?" : location)
                    .fontWeight(.semibold)
                Text(location.isEmpty ? "Anywhere - Any week - Add Guests" : "Any week - Add Guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button{
                //does filtering
            }label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("JanakPuri"))
}
