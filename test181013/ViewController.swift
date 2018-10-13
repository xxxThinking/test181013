//
//  ViewController.swift
//  test181013
//
//  Created by s20171105405 on 2018/10/13.
//  Copyright © 2018年 s20171105405. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HX: UITextField!
    @IBOutlet weak var HY: UITextField!
    @IBOutlet weak var HK: UITextField!
    @IBAction func HZ(_ sender: Any) {
        HK.text = "\(Int(HX.text!)! + (Int)(HY.text!)!)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}





