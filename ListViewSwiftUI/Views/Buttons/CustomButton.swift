//
//  CustomButton.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import SwiftUI

enum CustomButtonCategory {
    case call
    case info
}

struct CustomButton: View {
    var type: CustomButtonCategory
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            switch type {
            case .call:
                Image(systemName: "phone.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
            case .info:
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
            }
        }
        .foregroundColor(.black)
        .font(.subheadline)
        .padding(10)
    }
}
