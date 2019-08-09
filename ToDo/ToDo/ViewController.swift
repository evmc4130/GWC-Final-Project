//
//  ViewController.swift
//  ToDo
//
//  Created by Elizabeth Ostrow on 8/9/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var personal: UITextField!
    @IBAction func submit(_ sender: UIButton) {
        print(name.text!)
        print(personal.text!)
        if (name.text == nil || personal.text == nil) {
            errorMessage.text = "no"
        }
    }
}

