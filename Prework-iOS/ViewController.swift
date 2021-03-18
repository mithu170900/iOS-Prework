//
//  ViewController.swift
//  Prework-iOS
//
//  Created by Minh Thu Bui on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billTextField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billTextField.text!) ?? 0
        
        // Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tips and total labels
        tipAmountLabel.text = String(format:"$%.2f", tip)
        totalAmountLabel.text = String(format:"$%.2f", total)
    }
    
    
    
}

