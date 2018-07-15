//
//  Calculator.swift
//  calculator
//
//  Created by UCode on 7/7/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import Foundation

class Calculator {
    
    var input: Double
    var output: Double
    var place: Int
    var operation: Operation
    
    init() {
        input = 0
        output = 0
        operation = .none
        place = 0
        
    }
    
    func clear() {
        input = 0
        output = 0
        place = 0
        operation = .none
    }
    
    func sign() {
        input *= -1
    }
    
    func percent() {
        input *= 0.01
    }
    func decimal() {
        if place == 0 {
            place = -1
        }
    }
    
    func digit(_ entry: Int) {
        if place == 0 {
            input *= 10
        }
         input += Double(entry) * pow(10.0, Double(place))
        if place < 0 {
            place -= 1
        }

        
    }
    
    func operate(_ operation: Operation) {
        if self.operation == .none {
            output = input
        }
        else{
            equals()
        }
        input = 0
        place = 0
        self.operation = operation
    }
    func equals() {
        switch operation {
        case .addition:
            output += input
            break
        case .subtraction:
            output -= input
            break
        case .multiplication:
            output *= input
            break
        case .division:
            output /= input
            break
        default:
            break
        }
    }
}
