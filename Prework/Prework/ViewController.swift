//
//  ViewController.swift
//  Prework
//
//  Created by Fernando Gonzalez on 7/19/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTipPercentage: UITextField!
    @IBOutlet weak var totalCustomtip: UILabel!
    @IBOutlet weak var btnTipCalculate: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount fron text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2, 0.3]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Updated Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func calculateTipAmount(_ sender: Any) {
        
        let tipAmount:Double = (Double(totalCustomtip.text!)! / 100) * Double(billAmountTextField.text!)!
        totalCustomtip.text = "\(tipAmount)"
    }
    
    
    
    
    @IBAction func calculateCustomTip(_ sender: UITextField) {
        
        let billTotal = NSString(string: billAmountTextField.text ?? "No value").doubleValue
         
        // 2
        let tip = NSString(string: sender.text ?? "No value").doubleValue
         
        // 3
        let convertedTip = (tip / 100)
         
        // 4
        let tipTotal = billTotal * convertedTip
         
        // 5
        totalCustomtip.text = "$\(String(billTotal + tipTotal))"
    }
    
    
}

