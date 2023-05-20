//
//  ProductCell.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        HStack(alignment: .top){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screan.width * 0.25)
                .clipped()
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(product.name)
                    .font(.title.bold())
                    .padding(.vertical, 8)
                Text("Цена: \(product.price)₪")
                    .bold()
                Text("Количество: \(product.count) шт.")
                
            }
            Spacer()
        }
        .frame(width: screan.width * 0.97, height: screan.height * 0.2)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     name: "Футболка белая карман",
                                     image: "mai",
                                     group: "Футболки",
                                     price: 200,
                                     count: 5,
                                     ashdod: ["XL","XXL","L","M"],
                                     rishon: ["L","M"],
                                     batyam: ["XXL","L"]))
    }
}
