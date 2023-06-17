//
//  AddProdukt.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 15/06/2023.
//

import SwiftUI

struct AddProdukt: View {
    
    @State private var prodactName = ""
    
    @State private var produktPrise = 0
    
    
    var body: some View {
        VStack(alignment: .leading){
            
        
            Image("phot")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: screan.height * 0.4)
                .clipped()
            
            TextField("Название товара", text: $prodactName)
                .font(.title.bold())
                .padding(3)
                .cornerRadius(10)
                .border(.black, width: 1)
                .padding(.horizontal)
            TextField("Цена", text: Binding(
                get: {String(produktPrise)},
                set: { newValue in
                    if let intValue = Int(newValue){
                        produktPrise = intValue
                    }
                    
                }
            ))
            .font(.title)
            .keyboardType(.numberPad)
            .padding(3)
            .cornerRadius(10)
            .border(.black, width: 1)
            .padding(.horizontal)
         
            Button("Добавить") {}
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
        AddProdukt()
    }
}
