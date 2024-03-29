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

    @IBOutlet weak var nam: UITextField!
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var moment: UITextField!
    @IBAction func createProfile(_ sender: UIButton) {
        if(nam.text == "" || moment.text == ""){
            errorMessage.text = "You're an idiot"
        }
        else{
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                let user = UserCoreData(entity:UserCoreData.entity(), insertInto: context)
                user.name = nam.text!
                user.moment = moment.text!
                try? context.save()
                UserDefaults.standard.set(true, forKey: "accountCreated")
                self.performSegue(withIdentifier: "showSurvey", sender: self)
            }
        }
    }
            }



    func getToDos(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            if let user1 = try? context.fetch(UserCoreData.fetchRequest()) as? [UserCoreData]{
            print(user1.last!.name!) 
            }
        }
    }
    @IBAction func test(_ sender: UIButton) {
        getToDos()
    }


