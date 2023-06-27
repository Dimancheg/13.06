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
    @State private var razmerA = ""
    @State private var razmerR = ""
    @State private var razmerB = ""
    @State private var newNameProduct = ""
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.7)
                    .clipped()
                if !swich {
                    Text("\(product.name)")
                        .font(.title.bold())
                        .padding()
                    HStack{
                        Text("\(product.price)₪")
                            .font(.title)
                            .padding(.horizontal)
                        Spacer()
                        Text("\(product.group)")
                            .font(.title)
                            .padding(.horizontal)
                    }
                    
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
                        .onAppear{
                            newNameProduct = product.name
                        }
                    HStack{
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
                        .multilineTextAlignment(.trailing)
                        .frame(width: 90, height: 50)
                        Text("₪")
                            .font(.title)
                        Picker(selection: .constant(3), label: Text("Picker")) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                        }
                        .padding()
                        .font(.title)
                        .padding(.horizontal)
                    }
                    
                    
                    
                    
                }
                
                HStack{
                    Text("Ашдод:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    VStack{
                        ForEach(product.ashdod.chunked(into: 4), id: \.self) { chunk in
                            HStack{
                                ForEach(chunk, id: \.self){ chunk in
                                    Text(chunk)
                                        .font(.title3.bold())
                                        .padding(4)
                                        .padding(.horizontal, 8)
                                        .background(Color(.green))
                                        .cornerRadius(10)
                                }
                            }
                            
                        }
                    }
                    
                }
                if swich{
                    HStack{
                        TextField("Размер", text: $razmerA)
                            .font(.title.bold())
                            .padding(3)
                            .cornerRadius(10)
                            .border(.black, width: 1)
                            .padding(.horizontal)
                        Button(action: {
                            product.ashdod.append(razmerA)
                            razmerA = ""
                        }){
                            Image(systemName: "plus")
                                .font(.title)
                                .padding(.horizontal)
                        }
                    }
                }
                
                HStack{
                    Text("Ришон:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    VStack{
                        ForEach(product.rishon.chunked(into: 4), id: \.self) { chunk in
                            HStack{
                                ForEach(chunk, id: \.self){chunk in
                                    Text(chunk)
                                        .font(.title3.bold())
                                        .padding(4)
                                        .padding(.horizontal, 8)
                                        .background(Color(.green))
                                        .cornerRadius(10)
                                }
                            }
                            
                        }
                    }
                }
                if swich{
                    HStack{
                        TextField("Размер", text: $razmerR)
                            .font(.title.bold())
                            .padding(3)
                            .cornerRadius(10)
                            .border(.black, width: 1)
                            .padding(.horizontal)
                        Button(action: {
                            product.rishon.append(razmerR)
                            razmerR = ""
                        }){
                            Image(systemName: "plus")
                                .font(.title)
                                .padding(.horizontal)
                        }
                    }
                }
                
                HStack{
                    Text("Бат-Ям:")
                        .font(.title2.bold())
                        .padding(.horizontal)
                    
                    VStack{
                        ForEach(product.batyam.chunked(into: 4), id: \.self) { chunk in
                            HStack{
                                ForEach(chunk, id: \.self){ chunk in
                                    Text(chunk)
                                        .font(.title3.bold())
                                        .padding(4)
                                        .padding(.horizontal, 8)
                                        .background(Color(.green))
                                        .cornerRadius(10)
                                }
                            }
                            
                        }
                    }
                    
                }
                if swich{
                    HStack{
                        TextField("Размер", text: $razmerB)
                            .font(.title.bold())
                            .padding(3)
                            .cornerRadius(10)
                            .border(.black, width: 1)
                            .padding(.horizontal)
                        Button(action: {
                            product.batyam.append(razmerB)
                            razmerB = ""
                        }){
                            Image(systemName: "plus")
                                .font(.title)
                                .padding(.horizontal)
                        }
                    }
                    
                    
                }
                
            }
            .padding(.bottom, 100)
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
