//
//  CofeeMastersApp.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-01-27.
//

import SwiftUI

@main
struct CofeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
        }
    }
