//
//  Product.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

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

extension Product {
    static var emtyProduct: Product{
        Product(id: UUID(),
                name: "",
                image: "",
                group: "",
                price: 0,
                ashdod: [""],
                rishon: [""],
                batyam: [""])
    }
    
    static let products:[Product] = [
        Product(
            id: UUID(),
            name: "Футболка белая карман",
            image: "mai",
            group: "Футболки",
            price: 200,
            ashdod: ["XL","XXL","L","M"],
            rishon: ["L","M"],
            batyam: ["XXL","L"]),
        Product(
            id: UUID(),
            name: "Платье белое кружева",
            image: "plb",
            group: "Платья",
            price: 520,
            ashdod: ["XL","XXL","L","M"],
            rishon: ["L","M"],
            batyam: ["XXL","L"]),
        Product(
            id: UUID(),
            name: "Платье голобуе цветы",
            image: "pls",
            group: "Платья",
            price: 550,
            ashdod: ["XL","XXL","L","M"],
            rishon: ["L","M"],
            batyam: ["XXL","L"]),
        Product(
            id: UUID(),
            name: "Комбинезон Шик",
            image: "sht",
            group: "Комбинезоны",
            price: 420,
            ashdod: ["1Size","1Size","1Size"],
            rishon: ["1Size","1Size"],
            batyam: ["1Size"]),
        Product(
            id: UUID(),
            name: "Юбка короткая вышевка",
            image: "ub1",
            group: "Юбки",
            price: 220,
            ashdod: ["42","46","48"],
            rishon: ["42"],
            batyam: ["42","41"])
    ]
}
