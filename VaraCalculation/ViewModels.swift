//
//  ViewModels.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import Foundation

final class CalculatorViewModel: ObservableObject {
    @Published var calculator = Calculator()
    
    func showValue() -> String {
        if calculator.result != nil {
            self.calculator.nowValue = self.calculator.result!.clean
            self.calculator.secondValue = "0"
            self.calculator.result = nil
        }
        if self.calculator.nowOperator == nil {
            return self.calculator.nowValue.show
        } else {
            if self.calculator.secondValue == "0" {
                return self.calculator.nowValue.show
            } else {
                return self.calculator.secondValue.show
            }
        }
    }
    
    func addNumber(num: String) {
        if self.calculator.nowOperator == nil {
            if self.calculator.nowValue == "0" {
                self.calculator.nowValue = num
            } else {
                self.calculator.nowValue += num
            }
        } else {
            if self.calculator.secondValue == "0" {
                self.calculator.secondValue = num
            } else {
                self.calculator.secondValue += num
            }
        }
    }
    
    func getResult() {
        let firstValue = Double(self.calculator.nowValue)!
        let secondValue = Double(self.calculator.secondValue)!
        
        switch self.calculator.nowOperator {
        case .divade:
            self.calculator.result = firstValue / secondValue
        case .multiply:
            self.calculator.result = firstValue * secondValue
        case .minus:
            self.calculator.result = firstValue - secondValue
        case .plus:
            self.calculator.result = firstValue + secondValue
        default:
            print(self.calculator.nowOperator!.rawValue)
        }
        
        self.calculator.nowOperator = nil
    }
    
    func buttonPressed(but: Calculator.Buttons) {
        switch but {
        case .reset:
            self.calculator.nowValue = "0"
            self.calculator.secondValue = "0"
            self.calculator.result = nil
        case .changeMinus:
            if self.calculator.nowOperator == nil {
                let v = self.calculator.nowValue
                self.calculator.nowValue = v.prefix(1) == "-" ? v.replacingOccurrences(of: "-", with: "") : "-" + v
            } else {
                let v = self.calculator.secondValue
                self.calculator.secondValue = v.prefix(1) == "-" ? v.replacingOccurrences(of: "-", with: "") : "-" + v
            }
        case .persentsge:
            break
        case .result:
            if self.calculator.nowOperator != nil { self.getResult() }
        case .comma:
            if self.calculator.nowOperator == nil {
                self.calculator.nowValue += "."
            } else {
                self.calculator.secondValue += "."
            }
        default:
            self.calculator.nowOperator = but
        }
    }
    
    func delete() {
        if self.calculator.nowOperator == nil {
            if self.calculator.nowValue.count == 1 {
                if self.calculator.nowValue != "0" {
                    self.calculator.nowValue = "0"
                }
            } else {
                self.calculator.nowValue.removeLast()
            }
        } else {
            if self.calculator.secondValue.count == 1 {
                if self.calculator.secondValue != "0" {
                    self.calculator.secondValue = "0"
                }
            } else {
                self.calculator.secondValue.removeLast()
            }
        }
    }
}
