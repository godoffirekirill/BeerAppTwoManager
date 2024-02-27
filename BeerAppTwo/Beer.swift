//
//  Beer.swift
//  BeerAppTwo
//
//  Created by Кирилл Курочкин on 11.01.2024.
//

import Foundation

class Beer {
    
    var name: String
    var price: Int
    var quantity = 100
    var selected = 0
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}
