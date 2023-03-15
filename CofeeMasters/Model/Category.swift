//
//  Category.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-02-02.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
