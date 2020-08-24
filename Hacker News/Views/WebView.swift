//
//  WebView.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/24/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
   
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let error404urlString = "https://www.artzstudio.com/wp-content/uploads/2020/05/404-error-not-found-page-lost-1024x788.png"
        let url = URL(string: urlString ?? error404urlString)
        let request = URLRequest(url: url!)
        uiView.load(request)
        
    }
}
