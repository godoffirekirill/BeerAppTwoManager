//
//  ViewController.swift
//  BeerAppTwo
//
//  Created by Кирилл Курочкин on 11.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabelBeerOne: UILabel!
    
    @IBOutlet weak var nameLabelBeerTwo: UILabel!
    
    @IBOutlet weak var nameLabelBeerThree: UILabel!
    
    @IBOutlet weak var minusBeerButtonOne: UIButton!
    
    @IBOutlet weak var minusBeerButtonTwo: UIButton!
    
    @IBOutlet weak var minusBeerButtonThree: UIButton!
    
    @IBOutlet weak var quantityBeerOne: UILabel!
    
    @IBOutlet weak var quantityBeerTwo: UILabel!
    
    @IBOutlet weak var quantityBeerThree: UILabel!
    
    @IBOutlet weak var totalLabelBeer: UILabel!
    
    @IBOutlet weak var plusBeerButtonOne: UIButton!
    
    @IBOutlet weak var plusBeerButtonTwo: UIButton!
    
    @IBOutlet weak var plusBeerButtonThree: UIButton!
    
    @IBOutlet weak var sellButton: UIButton!
    
    @IBOutlet weak var startDayButton: UIButton!
    
    @IBOutlet weak var endDayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabelBeerOne.text = "Gubernija"
        nameLabelBeerTwo.text = "Heineken"
        nameLabelBeerThree.text = "Guinness"
        
        minusBeerButtonOne.setTitle("-", for: .normal)
        minusBeerButtonTwo.setTitle("-", for: .normal)
        minusBeerButtonThree.setTitle("-", for: .normal)
        
        plusBeerButtonOne.setTitle("+", for: .normal)
        plusBeerButtonTwo.setTitle("+", for: .normal)
        plusBeerButtonThree.setTitle("+", for: .normal)
        
        sellButton.setTitle("Sell", for: .normal)
        startDayButton.setTitle("Start Day", for: .normal)
        endDayButton.setTitle("End Day", for: .normal)
        
        quantityBeerOne.text = "0"
        quantityBeerTwo.text = "0"
        quantityBeerThree.text = "0"
        
    }
    @IBAction func minusBeerButtonOnePressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .minusBeerOne)
        quantityBeerOne.text = "\(Manager.shared.getBeer(name: "Gubernija").selected)"    }
    @IBAction func minusBeerButtonTwoPressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .minusBeerTwo)
        quantityBeerTwo.text = "\(Manager.shared.getBeer(name: "Heineken").selected)"    }
    @IBAction func minusBeerButtonThreePressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .minusBeerThree)
        quantityBeerThree.text = "\(Manager.shared.getBeer(name: "Guinness").selected)"    }
    @IBAction func plusBeerButtonOnePressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .plusBeerOne)
        quantityBeerOne.text = "\(Manager.shared.getBeer(name: "Gubernija").selected)"
    
    }
    @IBAction func plusBeerButtonTwoPressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .plusBeerTwo)
        quantityBeerTwo.text = "\(Manager.shared.getBeer(name: "Heineken").selected)"

    }
    @IBAction func plusBeerButtonThreePressed(_ sender: UIButton) {
        Manager.shared.statusQuantity(operation: .plusBeerThree)
        quantityBeerThree.text = "\(Manager.shared.getBeer(name: "Guinness").selected)"
    }
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        Manager.shared.sellBeer()
    }
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
        Manager.shared.startDay()
    }
    
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        print("\(Manager.shared.endDay())")
        totalLabelBeer.text = Manager.shared.endDay()
    }
    
}

