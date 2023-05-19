//
//  ProduktDitaleView.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct ProduktDitaleView: View {
    var product: Product
    
    var body: some View {
        Text("\(product.name)!")
    }
}

struct ProduktDitaleView_Previews: PreviewProvider {
    static var previews: some View {
        ProduktDitaleView(product: Product(id: "1",
                                           name: "Футболка белая карман",
                                            image: "mai",
                                           group: "Футболки",
                                           price: 200,
                                           count: 5))
    }
}
