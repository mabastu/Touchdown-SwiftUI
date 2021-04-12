//
//  Shop.swift
//  Touchdown
//
//  Created by Mabast on 4/7/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
