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
    var operation: Operation
    
    init() {
        input = 0
        output = 0
        operation = .none
        
    }
    
    func clear() {
        input = 0
        output = 0
    }
    
    func sign() {
        input *= -1
    }
    
    func percent() {
        input *= 0.01
    }
    
    
    func input(digit: Int) {
        
            
        
        
        
        
    }
    
    func operate(operation: Operation) {
        // self.operation
        // operation
    }
        
}
