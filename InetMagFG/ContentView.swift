//
//  ContentView.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var pass = ""
    
    
    var body: some View {
        VStack (spacing: 40){
            Text("Авторизация")
                .padding()
                .padding(.horizontal, 40)
                .font(.title2.bold())
                .background(Color("whiteOp"))
                .cornerRadius(20)
            VStack{
                TextField("Введите email...", text: $email)
                    .padding()
                    .background(Color("whiteOp"))
                    .cornerRadius(10)
                    .padding(8)
                    .padding(.horizontal)
                SecureField("Введите пароль...", text: $pass)
                    .padding()
                    .background(Color("whiteOp"))
                    .cornerRadius(10)
                    .padding(8)
                    .padding(.horizontal)
                Button{
                    print("Авторизация")
                } label: {
                    Text("Войти")
                        .padding()
                        .padding(.horizontal, 40)
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [ .indigo, .red]), startPoint: .leading, endPoint: .trailing))
                        .font(.title2.bold())
                        .cornerRadius(20)
                        .padding(8)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    
                }
                Button{
                    print("Нет аккаунта")
                } label: {
                    Text("Регистрация")
                        .padding()
                        .padding(.horizontal, 40)
                        .frame(maxWidth: .infinity)
                        .font(.title2.bold())
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                }
                
            }
            .padding(.vertical,40)
            .background(Color("whiteOp"))
            .cornerRadius(10)
            .padding(20)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
            .background(Image("fon"))
            .ignoresSafeArea()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
