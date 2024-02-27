//
//  Manager.swift
//  BeerAppTwo
//
//  Created by Кирилл Курочкин on 11.01.2024.
//

enum Quantity {
    case plusBeerOne
    case plusBeerTwo
    case plusBeerThree
    case minusBeerOne
    case minusBeerTwo
    case minusBeerThree
}

import Foundation

class Manager {
    
    static let shared = Manager()
    
    private var beerArray = [Beer(name: "Gubernija", price: 10),Beer(name: "Heineken", price: 8),Beer(name: "Guinness", price: 22)]
    private var startQuantity = 100
    private init() {}
    
    func getBeer(name: String) -> Beer {
        
        
        return  beerArray.filter({$0.name == name}).first ?? Beer(name: "Gubernija", price: 10)
    }
    
    func sellBeer(){
        
        var string = ""
        
        for beer in beerArray {
            string.append("Beer \(beer.name), quantity: \(beer.selected), sum: \(beer.selected * beer.price)\n")
            
            beer.quantity -= beer.selected
            beer.selected = 0
            print("\(beer.quantity)")
        }
        print(string)
        
    }
    
//    func plusBeerOne() -> String {
//        let beer = Manager.shared.getBeer(name: "Gubernija")
//        let quantity = beer.quantity
//        let selected = beer.selected
//      //  if selected >=  0 {return ("\(selected)")}
//        if quantity == selected {return ("\(selected)")}
//        
//        beer.selected += 1
//        return ("\(selected)")
//    }
    
    func endDay() -> String {
        var string = ""
        var totalSum = 0  // Initialize totalSum to zero

        for beer in beerArray {
            let quantitySold = startQuantity - beer.quantity
            let beerSum = quantitySold * beer.price
            totalSum += beerSum  // Update the totalSum

          //  string.append("\(beer.name), quantity: \(quantitySold), sum: \(beerSum)\n")
        }

        // Print the total sum
        string.append("Total sum of all beers: \(totalSum)\n")
        
    //    print(string)
        return string
    }
    
    
    func startDay() {
        for beer in beerArray {
            beer.quantity = 100
        }
    }
 
    func statusQuantity(operation: Quantity) {
        switch operation {
        case .minusBeerOne:
            let beer = Manager.shared.getBeer(name: "Gubernija")
            
            let quantity = beer.quantity
            let selected = beer.selected
            if selected ==  0 {return }
            if quantity == selected {return }
            
            beer.selected -= 1
            return
        case .minusBeerTwo:
            let beer = Manager.shared.getBeer(name: "Heineken")
            
            let quantity = beer.quantity
            let selected = beer.selected
            if selected ==  0 {return }

            if quantity == selected {return }
            
            beer.selected -= 1
            return
        case .minusBeerThree:
            let beer = Manager.shared.getBeer(name: "Guinness")
            
            let quantity = beer.quantity
            let selected = beer.selected
            if selected ==  0 {return}
            if quantity == selected {return }
            
            beer.selected -= 1
        case .plusBeerOne:
            let beer = Manager.shared.getBeer(name: "Gubernija")
            
            let quantity = beer.quantity
            let selected = beer.selected

            if quantity == selected {return }
            
            beer.selected += 1
        case .plusBeerTwo:
            let beer = Manager.shared.getBeer(name: "Heineken")
            
            let quantity = beer.quantity
            let selected = beer.selected
            
            if quantity == selected {return }
            
            beer.selected += 1
            
        case .plusBeerThree:
            let beer = Manager.shared.getBeer(name: "Guinness")
            
            let quantity = beer.quantity
            let selected = beer.selected
            
            if quantity == selected {return }
            
            beer.selected += 1
            
        }
    }
}
