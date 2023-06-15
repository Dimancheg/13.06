//
//  MainTabBar.swift
//  InetMagFG
//
//  Created by Dmitry Kalnitsky on 19/05/2023.
//

import SwiftUI

struct MainTabBar: View {
    @State var products: [Product]
    
    var body: some View {
        TabView{
            NavigationView{
                Catalog(products: $products)
            }
            
                .tabItem {
                    VStack{
                        Image(systemName: "folder.fill")
                        Text("Каталог")
                    }
                }
            Cart()
                .tabItem {
                    VStack{
                        Image(systemName: "basket.fill")
                        Text("Корзина")
                    }
                }
            Profil()
                .tabItem {
                    VStack{
                        Image(systemName: "person.circle")
                        Text("Профиль")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar(products: Product.products)
    }
}
