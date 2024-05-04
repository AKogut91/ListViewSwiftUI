//
//  String.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import Foundation

extension String {
    
    func randomText() -> String {
         let minLength = 40
         let maxLength = 200
         let textLength = Int.random(in: minLength...maxLength)
         
         let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 "
         return String((0..<textLength).map { _ in characters.randomElement()! })
     }
}
