//
//  Product.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import Foundation

struct Product: Identifiable, Codable {
    let id: UUID
    var name: String
    var image: String
    var group: String
    var price: Int
    var ashdod: [String]
    var rishon: [String]
    var batyam: [String]
    
    var count: Int {
        return ashdod.count + rishon.count + batyam.count
    }

    init(id: UUID, name: String, image: String, group: String, price: Int, ashdod: [String], rishon: [String], batyam: [String]) {
        self.id = id
        self.name = name
        self.image = image
        self.group = group
        self.price = price
        self.ashdod = ashdod
        self.rishon = rishon
        self.batyam = batyam
    }

}
