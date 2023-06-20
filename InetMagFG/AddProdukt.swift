//
//  AddProdukt.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 15/06/2023.
//

import SwiftUI

struct AddProdukt: View {
    
    @State private var newProduct = Product.emtyProduct
    @Binding var products: [Product]
    let saveAction: () -> Void
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack(alignment: .leading){
            
        
            Image("phot")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: screan.height * 0.4)
                .clipped()
            
            TextField("Название товара", text: $newProduct.name)
                .font(.title.bold())
                .padding(3)
                .cornerRadius(10)
                .border(.black, width: 1)
                .padding(.horizontal)
            TextField("Цена", text: Binding(
                get: {String(newProduct.price)},
                set: { newValue in
                    if let intValue = Int(newValue){
                        newProduct.price = intValue
                    }
                    
                }
            ))
            .font(.title)
            .keyboardType(.numberPad)
            .padding(3)
            .cornerRadius(10)
            .border(.black, width: 1)
            .padding(.horizontal)
            Picker(selection: .constant(0), label: Text("Picker")) {
                Text("Футболки").tag(1)
                Text("Штаны").tag(2)
                Text("Кофты").tag(3)
                Text("Брюки").tag(4)
            }
            .padding()
            .font(.title.bold())
            
         
            Button("Добавить") {
                
                products.append(newProduct)
                saveAction()
                dismiss()
            }
                .padding()
                .padding(.horizontal, 40)
                .frame(maxWidth: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [ .indigo, .red]), startPoint: .leading, endPoint: .trailing))
                .font(.title2.bold())
                .cornerRadius(20)
                .padding(8)
                .padding()
                .foregroundColor(.white)
            Spacer()
        }
        
        
    }
    
  
}

struct AddProdukt_Previews: PreviewProvider {
    static var previews: some View {
        AddProdukt(products: .constant(Product.products), saveAction: {})
    }
}
