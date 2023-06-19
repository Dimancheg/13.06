//
//  ProductStore.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/06/2023.
//

import SwiftUI

@MainActor

class ProductStore: ObservableObject{
    @Published var products: [Product] = []
    
    private static func fileURLProduct() throws -> URL{
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("products.data")
    }
    
    func loadProduct() async throws{
        let task = Task<[Product], Error> {
            let fileURL = try Self.fileURLProduct()
            guard let data = try? Data(contentsOf: fileURL) else{
                return[]
            }
            let productAll = try
            JSONDecoder().decode([Product].self, from: data)
            return productAll
        }
        let products = try await task.value
        self.products = products
    }
        
        func saveProduct(products: [Product]) async throws{
            let task = Task{
                let data = try
                JSONEncoder().encode(products)
                let outfile = try
                Self.fileURLProduct()
                try data.write(to: outfile)
            }
            _ = try await task.value
        }
    }
     

