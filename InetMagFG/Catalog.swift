//
//  Catalog.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct Catalog: View {
    
    //let layaout = [GridItem(.adaptive(minimum: screan.width))]
    @Binding var products: [Product]
    let saveAction: () -> Void
    
    var body: some View {
        ZStack{
            List{
                ForEach($products){product in
                    ZStack{
                        NavigationLink(destination: ProduktDitaleView(product: product)){
                            EmptyView()
                        }
                                .opacity(0.0)
                            ProductCell(product: product)
                                .foregroundColor(.black)
                        }
                        .swipeActions{
                            Button(action: {
                                products.removeAll(where: { $0.id == product.id })
                                saveAction()
                            }){
                                Label("Удалить", systemImage: "trash")
                            }
                            .tint(.red)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .listRowSeparator(.hidden)
                .navigationBarTitle("Товары")
                .toolbar{
                    NavigationLink(destination: AddProdukt(products: $products, saveAction: saveAction)){
                     Image(systemName: "plus")
                            .font(.title)
                            .padding()
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
//        ScrollView(.vertical, showsIndicators: false){
//            Section(){
//                ScrollView(.vertical, showsIndicators: false){
//                    LazyVGrid(columns: layaout){
//                        ForEach($products){product in
//                            NavigationLink{
//                                ProduktDitaleView(product: product)
//                            } label: {
//                                ProductCell(product: product)
//                                    .foregroundColor(.black)
//
//
//                            }
//
//                        }
//                    }
//                    .padding()
//                }
//            }
//        }
//        .navigationTitle("Товары")
//        .toolbar{
//            NavigationLink(destination: AddProdukt()) {
//                Image(systemName: "plus")
//                    .font(.title)
//                    .padding()
//        }
//
//
//   }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Catalog(products: .constant(Product.products),
    saveAction: {})
    }
}
