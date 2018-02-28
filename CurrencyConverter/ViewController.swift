//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Zack Olinger on 2/16/18.
//  Copyright © 2018 Zack Olinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var inputTextField: UITextField!
    @IBAction func convertCurrency(_ sender: Any) {
        
      
        if let amount = Double(inputTextField.text!) {
            
            dollarAmount = amount
        }
        
       
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        
        //reset dollarAmount to zero
        dollarAmount = 0.0
    }

    @IBAction func clearButton(_ sender: Any) {
        poundLabel.text = "0.0"
        yenLabel.text = "0.0"
        euroLabel.text = "0.0"
        inputTextField.text = nil
    }
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
 
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

