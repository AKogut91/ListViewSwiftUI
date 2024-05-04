//
//  Company.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import Foundation

struct Company: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageURL: String
}
