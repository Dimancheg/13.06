//
//  InetMagFGApp.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 18/05/2023.
//

import SwiftUI

let screan = UIScreen.main.bounds

@main
struct InetMagFGApp: App {
    var body: some Scene {
        WindowGroup {
            //AuthView()
            AuthView(products: Product.products)
        }
    }
}
