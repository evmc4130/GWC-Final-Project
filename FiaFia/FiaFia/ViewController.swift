//
//  ViewController.swift
//  FiaFia
//
//  Created by Elizabeth Ostrow on 8/12/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var accomplishment: UITextView!
    @IBOutlet weak var errormessage: UILabel!
    
    @IBAction func createProfile(_ sender: UIButton) {
        if(name.text == "" || accomplishment.text == ""){
            errormessage.text = "You missed a required field. Please try again!"
        }
        else{
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                let user = UserCoreData(entity:UserCoreData.entity(), insertInto: context)
                user.name = name.text!
                user.accomplishment = accomplishment.text!
                try? context.save()
                UserDefaults.standard.set(true, forKey: "accountCreated")
                self.performSegue(withIdentifier: "showSurvey", sender: self)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let main = segue.destination as? SurveyViewController{
            main.accomplishment = accomplishment.text!
            
        }
    }
    
}


