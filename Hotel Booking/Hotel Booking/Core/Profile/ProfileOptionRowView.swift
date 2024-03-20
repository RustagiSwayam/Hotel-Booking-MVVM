//
//  ProfileOptionRowView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 16/03/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    let imageName: String
    let title: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
