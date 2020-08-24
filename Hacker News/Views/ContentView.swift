//
//  ContentView.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/23/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import SwiftUI
import SwiftUIPullToRefresh


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        
        RefreshableNavigationView(title: "Hacker News", action: {
            self.networkManager.fetchData()
        }) {
            ForEach(self.networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Divider()
                        Text(post.title)
                    }
                }
            }
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
