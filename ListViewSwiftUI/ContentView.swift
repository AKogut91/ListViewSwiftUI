//
//  ContentView.swift
//  ListViewSwiftUI
//
//  Created by Alex Kogut on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    
    let companies: [Company] = [
        Company(title: "Company 1", subtitle: String().randomText(), imageURL: "https://cdn.pixabay.com/photo/2016/11/29/09/16/architecture-1868667_1280.jpg"),
        Company(title: "Company 1", subtitle: "Consectetur adipiscing elit", imageURL: "https://cdn.pixabay.com/photo/2024/02/14/13/13/hamburg-8573427_1280.jpg"),
        Company(title: "Company 3", subtitle: String().randomText(), imageURL: "https://cdn.pixabay.com/photo/2024/01/18/14/46/train-8517089_1280.jpg")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(companies) { company in
                        CustomListItem(company: company)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Info")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

