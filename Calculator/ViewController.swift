//
//  ViewController.swift
//  Calculator
//
//  Created by kztskawamu on 2015/02/14.
//  Copyright (c) 2015年 kztskawamu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    var number: Float = 0
    var number2: Float = 0
//    var number3: Int = 0
    var operation:Int = 0
    var sequence: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "\(number)"
        label1.text = "\(number)"
        label2.text = "\(number2)"
//        label3.text = "\(number3)"
    }
    
    func writeNumber(x : Float){
        if (operation == 0) {
            number = number * 10 + x
            label.text = "\(number)"
            label1.text = "\(number)"
            label2.text = "\(number2)"
//            label3.text = "\(number3)"
        }else{
            number2 = number2 * 10 + x
            label.text = "\(number2)"
            label1.text = "\(number)"
            label2.text = "\(number2)"
//            label3.text = "\(number3)"
        }
    }
    
    
    @IBAction func zero(){
        writeNumber(0)
    }
    
    @IBAction func one(){
        writeNumber(1)
    }
    
    @IBAction func two(){
        writeNumber(2)
    }
    
    @IBAction func three(){
        writeNumber(3)
    }
    
    @IBAction func four(){
        writeNumber(4)
    }
    
    @IBAction func five(){
        writeNumber(5)
    }
    
    @IBAction func six(){
        writeNumber(6)
    }
    
    @IBAction func seven(){
        writeNumber(7)
    }
    
    @IBAction func eight(){
        writeNumber(8)
    }
    
    @IBAction func nine(){
        writeNumber(9)
    }
    
    @IBAction func clear(){
        if (operation == 0) {
            number = 0
        }else{
            number2 = 0
            operation = 0
        }
        label.text = "\(number)"
        label1.text = "\(number)"
        label2.text = "\(number2)"
//        label3.text = "\(number3)"
    }
    
    @IBAction func plus(){
        if(sequence == 1){
            doEqual()
        }
        operation = 1
        sequence = 1
        number2 = 0
    }
    
    @IBAction func minus(){
        if(sequence == 2){
            doEqual()
        }
        operation = 2
        sequence = 2
        number2 = 0
    }
    
    @IBAction func mul(){
        if(sequence == 3){
            doEqual()
        }
        operation = 3
        sequence = 3
        number2 = 0
    }
    
    @IBAction func div(){
        if(sequence == 4){
            doEqual()
        }
        operation = 4
        sequence = 4
        number2 = 0
    }
    
    @IBAction func equal(){
        doEqual()
    }
    
    func doEqual(){
        switch (operation) {
        case 1:
            label.text = "\(number + number2)"
            number = number + number2
            break
        case 2:
            label.text = "\(number - number2)"
            number = number - number2
            break
        case 3:
            label.text = "\(number * number2)"
            number = number * number2
            break
        case 4:
            label.text = "\(number / number2)"
            number = number / number2
            break
        default :
            break
        }
//        label.text = "\(number)"
        label1.text = "\(number)"
        label2.text = "\(number2)"
//        label3.text = "\(number3)"
        sequence = 0
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

