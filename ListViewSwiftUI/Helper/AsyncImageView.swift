//
//  AsyncImageView.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import SwiftUI

struct AsyncImageView: View {
    let imageURL: String
    
    var body: some View {
        if let url = URL(string: imageURL) {
            AsyncImage(url: url) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .failure(let error):
                    Text("Failed to load image \(error.localizedDescription)")
                        .foregroundColor(.red)
                case .empty:
                    ProgressView() // Show progress indicator while loading
                @unknown default:
                    EmptyView()
                }
            }
        } else {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}
