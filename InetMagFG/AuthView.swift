//
//  ContentView.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 18/05/2023.
//

import SwiftUI

struct AuthView: View {
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var pass = ""
    @State private var confirmPass = ""
    
    @State private var isTabViewShow = false
    
    //@State var products: [Product]
    @StateObject private var store = ProductStore()
    
    var body: some View {
        VStack (spacing: 40){
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 40)
                .font(.title2.bold())
                .background(Color("whiteOp"))
                .cornerRadius(isAuth ? 20 : 60)
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
                    
                if !isAuth {
                    SecureField("Введите пароль...", text: $confirmPass)
                        .padding()
                        .background(Color("whiteOp"))
                        .cornerRadius(10)
                        .padding(8)
                        .padding(.horizontal)
                        
                }
                Button{
                    if isAuth {
                        print("Авторизация")
                        isTabViewShow.toggle()
                    } else {
                        print("Регистрация пользователя")
                        self.email = ""
                        self.pass = ""
                        self.confirmPass = ""
                        self.isAuth.toggle()
                    }
                    
                } label: {
                    Text(isAuth ? "Войти" : "Зарегистрироваться")
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
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Регистрация" : "Уже есть аккаунт")
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
            .padding(isAuth ? 20 : 10)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("fon")
            .resizable()
            .blur(radius: isAuth ? 0 : 5))
        .ignoresSafeArea()
        .animation(Animation.easeInOut(duration: 0.5), value: isAuth)
        .fullScreenCover(isPresented: $isTabViewShow){
            MainTabBar(products: $store.products){
                Task{
                    do{
                        try await store.saveProduct(products: store.products)
                    }catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
            .task {
                do {
                    try await store.loadProduct()
                }catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
