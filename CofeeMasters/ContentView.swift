//
//  ContentView.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-01-27.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cartManager: CartManager// Any data you want to get out of View use env.obj.
    
    var body: some View {
        TabView{
            MenuPage()
                .tabItem{
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem{
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem{
                    Image(systemName: "info")
                    Text("Info")
                }
        }}
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .previewDevice("Iphone 14 Pro")
            
        }
    }
}
