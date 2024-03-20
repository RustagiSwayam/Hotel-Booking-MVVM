//
//  DestinationSearchView.swift
//  Hotel Booking
//
//  Created by Swayam Rustagi on 16/03/24.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}



struct DestinationSearchView: View {
    //this @Binding will bind the 'show' value to showDestinationSearchView's current state
    
    @Binding var show: Bool
    
    @ObservedObject var viewModel: ExploreViewModel
    
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    @State private var guests = 0

    var body: some View {
        VStack{
            HStack {
                Button{
                    show.toggle() //if this is toggled, the showDestinationSearchView's value also toggles
                    viewModel.updateListingsForLocation()
                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty{
                    Button{
                        viewModel.searchLocation = ""
                        guests = 0
                        viewModel.updateListingsForLocation()
                    }label: {
                        Text("Clear")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
            }
            .padding()
            
            //destination selection
            
            VStack(alignment: .leading){
                
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                                
                                //on submission, the search window will close and will show filtered results
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 1)
                    }
                } else {
                    CollapsedPicker(title: "Where", description: viewModel.searchLocation.isEmpty ? "Add destination" : viewModel.searchLocation)
                }
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .location}        }
            
            //date selection
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                    }
                }else{
                    CollapsedPicker(title: "When", description: "Add date")
                }
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            .padding()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
            .padding()
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .dates}
            }
            
            //guest selection
            VStack{
                if selectedOption == .guests{
                    VStack(alignment: .leading){
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Stepper{
                            Text("\(guests) adults")
                        }onIncrement: {
                            guests += 1
                        }onDecrement: {
                            guard guests > 0 else {return} //with this, guests are not in neg no.
                            guests -= 1
                        }
                    }
                }else{
                    CollapsedPicker(title: "Who", description: guests == 0 ? "Add guests" : "\(guests) \(guests == 1 ? "adult" : "adults")")
                }
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .guests}        }
            
        }
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(true), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsedPicker: View{
    
    let title: String
    let description: String
    
    var body: some View{
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                    
                Spacer()
                
                Text(description)
            }

        }
    }
}
