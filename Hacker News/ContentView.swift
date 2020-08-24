//
//  ContentView.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/23/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: Int
    let title: String
}

let posts = [
    Post(id: 1, title: "Hello!"),
    Post(id: 2, title: "Bonjour!"),
    Post(id: 3, title: "Hola!")
]
