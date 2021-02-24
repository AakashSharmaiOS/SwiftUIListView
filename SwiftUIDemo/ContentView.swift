//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by mac on 24/02/21.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI



struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?

    // some example websites
    static let apple = Bookmark(name: "Apple", icon: "1.circle")
    static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")
    static let swift = Bookmark(name: "Swift", icon: "bolt.fill")
    static let twitter = Bookmark(name: "Twitter", icon: "mic")

    // some example groups
    static let example1 = Bookmark(name: "Favorites", icon: "star", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let example2 = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let example3 = Bookmark(name: "Recommended", icon: "hand.thumbsup", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
}

struct ContentView: View {
    let items: [Bookmark] = [.example1, .example2, .example3]
    @State private var stringLabel = ""
    @State private var image = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .center, spacing: 10) {
                    Image(image)
                    Text(stringLabel)
                }
                
                List(items) { (row) in
                    Image(systemName: row.icon)
                    Text(row.name)
                        .onTapGesture { self.setUI(image: row.icon, name: row.name) }
                }
            }.navigationBarTitle("ListView")
        }
       
    }
    
    func setUI(image:String,name:String){
        self.stringLabel = name
        self.image = image
    }
    
}
