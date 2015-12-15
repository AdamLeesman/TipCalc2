//
//  ViewController.swift
//  TipCalc2
//
//  Created by Adam Leesman on 12/15/15.
//  Copyright © 2015 Adam Leesman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        let tipPercentages = [0.18, 0.20, 0.22]
        
         let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        let billAmount=NSString(string:billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount+tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(tip)"
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)

        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

