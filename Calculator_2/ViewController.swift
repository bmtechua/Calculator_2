//
//  ViewController.swift
//  Calculator_2
//
//  Created by miroslav babilya on 18.03.18.
//  Copyright © 2018 miroslav babilya. All rights reserved.
//

import UIKit
var x:Double = 0
var y:Double = 0

var enterFlag = 1
var yFlag = 1

var  decimalPoint = 0

var operationActive = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func digitals(_ sender: UIButton)
    {
           print("Digital \(sender.tag)")
        if enterFlag == 1
        {
            x = 0
            enterFlag = 0
        }
        x = x * 10 + Double(sender.tag)
        self.result.text = " " + String(Int64(x))
     }
    
    @IBAction func operations(_ sender: UIButton)
    {
        if  enterFlag != 1 && yFlag == 1
        {
            switch operationActive
            {
            case 1001:
                x = y + x
            case 1002:
                x = y - x
            case 1003:
                x = y * x
            case 1004:
                x = y / x
            default:  self.result.text = " " + String(Int64(x))

            }
        }
        operationActive = sender.tag
        y = x
        yFlag = 1
        enterFlag = 1
        
         self.result.text = " " + String(Int64(x))
    }
    
    @IBAction func decimal(_ sender: Any)
    {
            if decimalPoint == 0
        {
            decimalPoint = 1
            self.result.text = self.result.text
            
        }
    }
    
    @IBAction func clearAllclear(_ sender: Any)
    {
        x = 0
        y = 0
         self.result.text = " " + String(Int64(x))
    }
    
    @IBOutlet weak var result: UILabel!
    
}




