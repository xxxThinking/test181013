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
    var remember: Bool = true
    var isNotLow: Bool = true
    var count = 0
    var temp1: Int = 0
    var temp3:Int = 0
    @IBOutlet weak var HK: UITextField!
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
            if(remember)
            {
                temp1 = Int(HK.text!)!
                temp3 +=  temp1
            }
            else
            {
                temp = Double(HK.text!)!
            }
        remember = true
        HK.text = ""
    }
    }
    @IBAction func reduce(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
        count = 2
            if(remember)
            {
                if(temp3 == 0){
                temp3 = Int(HK.text!)!
                }
                else{
                temp1 = Int(HK.text!)!
                }
                temp3 -=  temp1
            }
            else
            {
                temp = Double(HK.text!)!
            }
         remember = true
        HK.text = ""
        }
    }
    @IBAction func division(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
    
        } else
        {
        count = 3
            if(remember)
            {
                if(temp3 == 0){
                    temp3 = Int(HK.text!)!
                }
                else{
                temp1 = Int(HK.text!)!
                }
                temp3 /=  temp1
            }
            else
            {
                temp = Double(HK.text!)!
            }
        remember = true
        HK.text = ""
        }
    }
    @IBAction func multiplication(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
        count = 4
            if(remember)
            {
                if(temp3 == 0){
                    temp3 = Int(HK.text!)!
                }
                else{
                temp1 = Int(HK.text!)!
                temp3 *=  temp1
                }
            }
            else
            {
                temp = Double(HK.text!)!
            }
        remember = true
        HK.text = ""
        }
    }
    @IBAction func HZ(_ sender: Any) {
        if(HK.text == "0" || HK.text == "")
        {
            
        } else
        {
        if(count == 1){
            if(remember)
            {
                temp3 += Int(HK.text!)!
                HK.text = "\(temp3)"
            }
            else
            {
                temp = temp + Double(HK.text!)!
                HK.text = "\(temp)"
            }
        count = 0
        }
        if(count == 2){
            if(remember)
            {
                
                HK.text = "\(temp3)"
            }
            else
            {
                temp = temp - Double(HK.text!)!
                HK.text = "\(temp)"
            }
            count = 0
        }
        if(count == 3)
        {
            if(remember)
            {
                temp3 /= Int(HK.text!)!
                HK.text = "\(temp3)"
            }
            else
            {
                temp = temp / Double(HK.text!)!
                HK.text = "\(temp)"
            }
            count = 0
   
        }
        if(count == 4)
        {
            if(remember)
            {
                temp3 *= Int(HK.text!)!
                HK.text = "\(temp3)"
            }
            else
            {
                temp = temp * Double(HK.text!)!
                HK.text = "\(temp)"
            }
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
            if(remember)
            {
                temp1 = Int(HK.text!)! * -1
                HK.text = "\(temp1)"
            }
            else
            {
                temp = Double(HK.text!)! * -1
                HK.text = "\(temp)"
            }
        }
    }
    @IBAction func Hdot(_ sender: Any) {
        if(HK.text == "")
        {
            remember = false
        }else
        {
            if(remember){
                HK.text = HK.text! + "."
            }
            remember = false
        }
    }
    @IBAction func HAC(_ sender: Any) {
        HK.text = ""
        remember = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
