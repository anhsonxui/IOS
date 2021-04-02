//
//  ViewController.swift
//  Calculator
//
//  Created by CNTT on 3/26/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: properties
    
    @IBOutlet weak var calScreen: UILabel!
    var isfirst = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Button's Action

    @IBAction func btnTap(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if isfirst {
            if digit != "0"{
                calScreen.text = digit
                isfirst = false
            }
        }
        else{
            let calScreenValue = calScreen.text!
            calScreen.text = calScreenValue + digit
        }
    }
    var calScreenDoubleValue:Double{
        get{
            if let stringValue = calScreen.text{
                if let doubleValue = Double(stringValue){
                    return doubleValue
                }
                else{
                    return 0
                }
            }
            else{
                return 0
            }
        }
        set{
            calScreen.text = String(newValue)
        }
    }
    let calBrain = CaculatorBrain()
    
    
    @IBAction func celFunction(_ sender: UIButton) {
        calBrain.setOperand(operand: calScreenDoubleValue)
        
        if let mathSymbol = sender.currentTitle{
            calBrain.caculate(mathOperator: mathSymbol)
        }
        if let value = calBrain.result{
            calScreenDoubleValue = value
        }
        isfirst = true
    }
    
}

