//
//  Models.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import Foundation

struct Calculator {
    enum Buttons: String, CaseIterable {
        case reset = "AC", changeMinus = "+/-", persentsge = "%",
             divade = "/", multiply = "X", minus = "-", plus = "+",
             result = "=", comma = ","
    }
    
    let allButtons = Buttons.allCases
    let topRowButtons = [Buttons.reset, Buttons.changeMinus, Buttons.persentsge]
    let rightColunButtons = [Buttons.divade, Buttons.multiply, Buttons.minus, Buttons.plus, Buttons.result]
    
    var nowValue: String = "0"
    var secondValue: String = "0"
    var nowOperator: Buttons? = nil
    
    var result: Double? = nil
//    var result: Float? {
//        if nowValue != nil && nowOperator != nil && secondValue != nil {
//            switch nowOperator {
//            case .persentsge:
//                return Float(nowValue! * secondValue! / 100.0)
//            }
//
//        }
//        return nil
//    }
}

