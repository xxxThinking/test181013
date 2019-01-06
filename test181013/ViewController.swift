//
//  ViewController.swift
//  test181013
//
//  Created by s20171105405 on 2018/10/13.
//  Copyright © 2018年 s20171105405. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp:Double = 0
    var remember: Bool = false
    var newInput = true
    var cacheNumber = ""
    var op = ""
    var count = 0
    var add = 0
    var temp1: Double = 0
    var temp2: Double = 0
    var temp3:Double = 0
    @IBOutlet weak var HK: UITextField!
    var isStart:Bool = false
    @IBAction func H1(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "1"
    }
    @IBAction func H2(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "2"
    }
    @IBAction func H3(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "3"
    }
    @IBAction func H4(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "4"
    }
    @IBAction func H5(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text!  + "5"
    }
    @IBAction func H6(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "6"
    }
    @IBAction func H7(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "7"
    }
    @IBAction func H8(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "8"
    }
    @IBAction func H9(_ sender: Any) {
        if(HK.text == "0")
        {
            HK.text = ""
        }
        HK.text = HK.text! + "9"
    }
    @IBAction func H0(_ sender: Any) {
        HK.text = HK.text! + "0"
    }
    @IBAction func SUM(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
        count = 1
        temp1 = Double(HK.text!)!
        temp3 +=  temp1
        HK.text = ""
    }
    }
    @IBAction func reduce(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
            if(count == 1){
                temp1 = Double(HK.text!)!
                temp3 += temp1
                count = 0
            }
        count = 2
        if(temp3 == 0)
                {
                    temp3 = Double(HK.text!)!
                }else
                {
                    temp1 = Double(HK.text!)!
                }
                temp3 -= temp1
        HK.text = ""
        }
    }
    @IBAction func division(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
    
        } else
        {
            if(count == 1){
                temp1 = Double(HK.text!)!
                temp3 +=  temp1
            }
        count = 3
    if(temp3 == 0){
        temp3  = Double(HK.text!)!
        } else
        {
            temp1 = Double(HK.text!)!
        }
            temp3 /=  temp1
        HK.text = ""
        }
    }
    @IBAction func multiplication(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
            if(count == 1){
                temp1 = Double(HK.text!)!
                temp3 +=  temp1
            }
        count = 4
        if(temp3 == 0){
            temp3 = Double(HK.text!)!
        } else
        {
            temp1 = Double(HK.text!)!
            temp3 *=  temp1
        }
        HK.text = ""
        }
    }
    @IBAction func HZ(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
        if(count == 1){
            temp1 = Double(HK.text!)!
            temp3 +=  temp1
            HK.text = "\(temp3)"
            count = 0
        }
        if(count == 2){
            temp1 = Double(HK.text!)!
            temp3 -=  temp1
            HK.text = "\(temp3)"
            count = 0
        }
        if(count == 3)
        {
            temp3 /= Double(HK.text!)!
            HK.text = "\(temp3)"
            count = 0
   
        }
        if(count == 4)
        {
                temp3 *= Double(HK.text!)!
                HK.text = "\(temp3)"
                count = 0
        }
        }
}
    @IBAction func negative(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            HK.text = "-"
        } else
        {
            if(HK.text == "-")
            {
                HK.text = ""
               return
            }
                temp1 = Double(HK.text!)! * -1
                HK.text = "\(temp1)"
        }
    }
    @IBAction func Hdot(_ sender: Any) {
        if !remember{
            HK.text! += "."
            remember = true
        }

    }
    @IBAction func operratorClick(_ sender: UIButton) {
        cacheNumber = HK.text!
        op = sender.titleLabel!.text!
        HK.text = "0"
        remember = false
        newInput = true
        add += 1
    }
    @IBAction func HAC(_ sender: Any) {
        HK.text = ""
        remember = true
    }
    
    func calculate(){
        let num1 = Double(cacheNumber)!
        let num2 = Double(HK.text!)!
        let result:Double
        if "+" == op {
            result = num1 + num2
        }
        else if "-" == op {
            result = num1 - num2
        }
        else if "*" == op {
            result = num1 * num2
        }
        else if "/" == op {
            result = num1 / num2
        }
        else {
            result = 0
        }
        temp3 += Double(HK.text!)!
        HK.text = "\(result)"
        remember = false
        newInput = true
    }
    @IBAction func clear(_ sender: UIButton) {
        remember = false
        newInput = true
        cacheNumber = "0"
        op = ""
        add = 0
        HK.text = "0"
    }
    @IBAction func equalClick(_ sender: UIButton) {
        if(add > 1){
        calculate()
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


