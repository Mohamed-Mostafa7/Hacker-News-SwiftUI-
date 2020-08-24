//
//  DetailView.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/24/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
