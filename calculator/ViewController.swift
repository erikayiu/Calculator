//
//  ViewController.swift
//  calculator
//
//  Created by UCode on 7/7/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showInput()
        NSLog("view controller should have loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showInput() {
        displayLabel.text = String(calculator.input)
    }
    func showOutput() {
        displayLabel.text = String(calculator.output)
    }

    @IBAction func additionButtonPressed(_ sender: UIButton) {
        calculator.operate(.addition)
        showOutput()
    }
    
    @IBAction func subtractionButtonPressed(_ sender: UIButton) {
        calculator.operate(.subtraction)
        showOutput()
    }
    
    @IBAction func multiplicationButtonPressed(_ sender:UIButton) {
        calculator.operate(.multiplication)
        showOutput()
    }
    
    @IBAction func divisionButtonPressed(_ sender:UIButton) {
        calculator.operate(.division)
        showOutput()
    }
    
    @IBAction func decimalButtonPressed(_ sender: UIButton){
        calculator.decimal()
        showInput()
    }
    
    @IBAction func digitButtonPressed(_ sender: UIButton) {
        calculator.digit(sender.tag)
        showInput()
    }
    
    @IBAction func clearButtonPressed (_ sender: UIButton){
    calculator.clear()
        showInput()
}
    @IBAction func signButtonPressed (_ sender: UIButton){
        calculator.sign()
        showInput()
    }
    @IBAction func percentButtonPressed (_ sender: UIButton){
        calculator.percent()
        showInput()
    }
    
    @IBAction func equalsButtonPressed (_ sender: UIButton){
        calculator.equals()
        showInput()
    }
}

