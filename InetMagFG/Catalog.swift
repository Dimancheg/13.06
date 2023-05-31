//
//  Catalog.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct Catalog: View {
    
    let layaout = [GridItem(.adaptive(minimum: screan.width))]
    
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: false){
                Section(){
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: layaout){
                            ForEach(CatalogViewModel.shared.products, id: \.id){item in
                                NavigationLink{
                                   ProduktDitaleView(product: item)
                                } label: {
                                    ProductCell(product: item)
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
        Catalog()
    }
}
