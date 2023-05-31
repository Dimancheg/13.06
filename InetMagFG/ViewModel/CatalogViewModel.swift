//
//  CatalogViewModel.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import Foundation

class CatalogViewModel: ObservableObject {
    static let shared = CatalogViewModel()
    
    var products = [
        Product(id: "1",
                name: "Футболка белая карман",
                image: "mai",
                group: "Футболки",
                price: 200,
                ashdod: ["XL","XXL","L","M"],
                rishon: ["L","M"],
                batyam: ["XXL","L"]),
        Product(id: "2",
                name: "Платье белое кружева",
                image: "plb",
                group: "Платья",
                price: 520,
                ashdod: ["XL","XXL","L","M"],
                rishon: ["L","M"],
                batyam: ["XXL","L"]),
        Product(id: "3",
                name: "Платье голобуе цветы",
                image: "pls",
                group: "Платья",
                price: 550,
                ashdod: ["XL","XXL","L","M"],
                rishon: ["L","M"],
                batyam: ["XXL","L"]),
        Product(id: "4",
                name: "Комбинезон Шик",
                image: "sht",
                group: "Комбинезоны",
                price: 420,
                ashdod: ["1Size","1Size","1Size"],
                rishon: ["1Size","1Size"],
                batyam: ["1Size"]),
        Product(id: "5",
                name: "Юбка короткая вышевка",
                image: "ub1",
                group: "Юбки",
                price: 220,
                ashdod: ["42","46","48"],
                rishon: ["42"],
                batyam: ["42","41"])
    ]
}
