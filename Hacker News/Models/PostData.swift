//
//  PostData.swift
//  Hacker News
//
//  Created by MoHaMeD MoStAfA on 8/24/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

