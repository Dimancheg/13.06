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
                count: 5),
        Product(id: "2",
                name: "Платье белое кружева",
                image: "plb",
                group: "Платья",
                price: 520,
                count: 2),
        Product(id: "3",
                name: "Платье голобуе цветы",
                image: "pls",
                group: "Платья",
                price: 550,
                count: 3),
        Product(id: "4",
                name: "Комбинезон Шик",
                image: "sht",
                group: "Комбинезоны",
                price: 420,
                count: 4),
        Product(id: "5",
                name: "Юбка короткая вышевка",
                image: "ub1",
                group: "Юбки",
                price: 220,
                count: 10)
    ]
}
