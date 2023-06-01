//
//  Expression.swift
//  Calculator
//
//  Created by iPHTech 29 on 01/06/23.
//

import Foundation

extension NSExpression {
    func toFloatingPoint() -> NSExpression {
        switch expressionType {
        case .constantValue:
            if let value = constantValue as? NSNumber {
                return NSExpression(forConstantValue: NSNumber(value: value.doubleValue))
            }
        default:
            break
        }
        return self
    }
}
