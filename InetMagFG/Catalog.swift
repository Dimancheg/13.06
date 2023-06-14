//
//  Catalog.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct Catalog: View {
    
    let layaout = [GridItem(.adaptive(minimum: screan.width))]
    @State var products: [Product]
    
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: false){
                Section(){
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: layaout){
                            ForEach(products){product in
                                NavigationLink{
                                   ProduktDitaleView(product: product)
                                } label: {
                                    ProductCell(product: product)
                                        .foregroundColor(.black)
                                        
                                    
                                }
                                
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Товары")
            .toolbar{
                Button(action: {}){
                    Image(systemName: "plus")
                        .font(.title)
                        .padding()
                }
            }
          
        
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Catalog(products: Product.products)
    }
}
