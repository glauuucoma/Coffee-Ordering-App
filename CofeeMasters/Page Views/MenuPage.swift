//
//  MenuPage.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-02-01.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView{
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) {product in
                        NavigationLink {
                            DetailsPage()
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                    
                    NavigationLink { // Navigation
                        DetailsPage()
                    } label: {
                        ProductItem(product: Product(id: 1, name: "Products", description: "", price: 1.25, image: ""))
                    }

                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}

struct Previews_MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
