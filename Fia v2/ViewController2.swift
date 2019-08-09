//
//  ViewController2.swift
//  Fia v2
//
//  Created by Elizabeth Ostrow on 8/7/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var personal: UITextField!
    
    @IBOutlet weak var prof: UITextField!
    
    @IBOutlet weak var adjec: UITextField!
    
    @IBOutlet weak var aelse: UITextField!
    
    @IBAction func submitted(_ sender: UIButton) {
        print(name.text!)
        var name1 = (name.text!)
        print(name1)
        var person = (personal.text!)
        print(person)
        var aca = (prof.text!)
        print(aca)
        var adj = (adjec.text!)
        print(adj)
        var elsea = (aelse.text!)
        print(elsea)
        let goodStuff = [name1, person, aca, adj, elsea]
        print(goodStuff)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
