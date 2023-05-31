//
//  Product.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import Foundation

struct Product {
    var id: String
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
    
//    func rename(of d: Product, to newName: String){
//        d.name = newName
//    
//    }
}
