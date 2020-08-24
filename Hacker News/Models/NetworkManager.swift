//
//  NetworkManager.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/24/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search_by_date?tags=story") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                } else {
                    print("this is an error")
                }
            }
            task.resume()
        }
    }
}
