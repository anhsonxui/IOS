//
//  CaculatorBrain.swift
//  Calculator
//
//  Created by CNTT on 4/2/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import Foundation
class CaculatorBrain {
    private var accumulator:Double?
    func setOperand(operand: Double) {
        accumulator = operand
    }
    func caculate( mathOperator:String) {
        switch mathOperator {
        case "𝜫":
            accumulator = Double.pi
        case "𝝐":
            
            accumulator = M_E
        case "✓":
            if let value = accumulator{
                accumulator = sqrt(value)
            }
        default:
            break
        }
    }
    var result:Double?{
        get{
            if let value = accumulator{
                return value
            }else{
                return 0
            }
        }
    }
    
}
