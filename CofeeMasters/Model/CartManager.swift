//
//  CartManager.swift
//  CofeeMasters
//
//  Created by Давид Кулеба on 2023-02-02.
//

import Foundation

class CartManager: ObservableObject{
    @Published var cart: [(Product, Int)] = []
}

