//
//  Profil.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct Profil: View {
    
    @State private var newGroap = ""
   
    var body: some View {
        VStack{
            Text("Профиль")
                .font(.title)
            
            List{
                Text("Группы товара:")
                    .font(.title3)
                ForEach(group, id: \.self){group in
                    Text(group)
                }
            }
            HStack{
                TextField("Введите название группы", text: $newGroap)
                Button("Добавить"){
                    group.append(newGroap)
                    newGroap = ""
                }
                .padding()
            }
            
        
        }
        
        
    }
}

struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil()
    }
}
