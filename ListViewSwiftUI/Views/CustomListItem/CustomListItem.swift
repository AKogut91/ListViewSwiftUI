//
//  CustomListItem.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import Foundation
import SwiftUI

enum SelectedCategory: Int, Identifiable {
    case call
    case info
    case image
    
    var id: Int { self.rawValue }
}

struct CustomListItem: View {
    let company: Company
    let phoneNumber = "380938885566"
    @State private var selectedCategory: SelectedCategory? = nil
    @State private var isLoadingImage = true
    
    var body: some View {
        VStack {
            AsyncImageView(imageURL: company.imageURL)
                .padding(10)
                .gesture(TapGesture().onEnded {
                    selectedCategory = .image
                })
            HStack {
                Text(company.title)
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(10)
                
                Spacer()
                
                CustomButton(type: .call) {
                    selectedCategory = .call
                }
            }
            .padding(.horizontal, 10)
            
            HStack {
                Text(company.subtitle)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(10)
                
                Spacer()
                
                CustomButton(type: .info) {
                    selectedCategory = .info
                }
            }
            .padding(.horizontal, 10)
        }
        .border(Color.gray.opacity(0.5), width: 0.5)
        .cornerRadius(1)
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        .alert(item: $selectedCategory) { category in
            switch category {
            case .call:
                let canMakeCall = UIApplication.shared.canOpenURL(URL(string: "tel://")!)
                if canMakeCall {
                    return Alert(title: Text("Your device can't make a call"), message: nil, dismissButton: .default(Text("OK")))
                } else {
                    return Alert(title: Text("You selected call button"), message: nil, dismissButton: .default(Text("OK")))
                }
            case .info:
                return Alert(title: Text("You selected info button"), message: nil, dismissButton: .default(Text("OK")))
            case .image:
                return Alert(title: Text("You selected Image"), message: nil, dismissButton: .default(Text("OK")))
            }
        }
    }
}
