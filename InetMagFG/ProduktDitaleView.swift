//
//  ProduktDitaleView.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct ProduktDitaleView: View {
    @Binding var product: Product
    @State private var swich: Bool = false
    
    @State private var newNameProduct = ""
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: screan.height * 0.7)
                    .clipped()
                if !swich {
                    Text("\(product.name)")
                        .font(.title.bold())
                        .padding()
                    Text("\(product.price)₪")
                        .font(.title)
                        .padding(.horizontal)
                }else {
                    
                        TextField(product.name, text: $newNameProduct)
                            .onChange(of: newNameProduct){ newValue in
                                product.name = newValue
                            }
                            .font(.title.bold())
                            
                            .padding(3)
                            .cornerRadius(10)
                            .border(.black, width: 1)
                            .padding(13)
                            
                        
                        TextField(String(product.price), text: Binding(
                            get: {String(product.price)},
                            set: { newValue in
                                if let intValue = Int(newValue){
                                    product.price = intValue
                                }
                                
                            }
                                                              ))
                            
                            .font(.title)
                            .keyboardType(.numberPad)
                        
                            
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                    
                    
                }
                
                HStack{
                    Text("Ашдод:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    ForEach(product.ashdod, id: \.self) { item in
                        Text(item)
                            .font(.title3.bold())
                            .padding(4)
                            .padding(.horizontal, 8)
                            .background(Color(.green))
                            .cornerRadius(10)
                    }
                }
                HStack{
                    Text("Ришон:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    ForEach(product.rishon, id: \.self) { item in
                        Text(item)
                            .font(.title3.bold())
                            .padding(4)
                            .padding(.horizontal, 8)
                            .background(Color(.green))
                            .cornerRadius(10)
                    }
                }
                HStack{
                    Text("Бат-Ям:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    
                    ForEach(product.batyam, id: \.self) { item in
                        Text(item)
                            .font(.title3.bold())
                            .padding(4)
                            .padding(.horizontal, 8)
                            .background(Color(.green))
                            .cornerRadius(10)
                    }
                    
                }
                .padding(.bottom, 100)
                
                
                
                
                
            }
        }
        
        .ignoresSafeArea()
        .toolbar{
            Button(action: {
                swich.toggle()
                
            }){
                Image(systemName: swich ? "checkmark.circle.fill" : "square.and.pencil.circle.fill")
                    .font(.title)
                    .padding()
            }
        }
        
        
    }
}

struct ProduktDitaleView_Previews: PreviewProvider {
    static var previews: some View {
        ProduktDitaleView(product: .constant(Product.products[0]))
    }
}
