//
//  ProfileView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 16/03/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //login window
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
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
                
                HStack{
                    Text("Don't have an account?")
                    Text("Sign up ")
                        .underline()
                        .bold()
                }
                .font(.caption)
            }
            .padding(.horizontal)
            
            VStack{
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit help center")
            }
        }
    }
}

#Preview {
    ProfileView()
}
