//
//  SurveyViewController.swift
//  FiaFia
//
//  Created by Elizabeth Ostrow on 8/12/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    
    
    @IBOutlet weak var question: UILabel!
    var accomplishment: String = ""
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "How are you feeling right now, " + name + "?"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "accountCreated") {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                if let users = try? context.fetch(UserCoreData.fetchRequest()) as? [UserCoreData]{ 
                    if let user = users.first{
                        name = user.name!
                        accomplishment = user.accomplishment!
                        question.text = "How are you feeling right now, " + name + "?"
                    }
                }
            }
        } else {
            self.performSegue(withIdentifier: "createAcc", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let sad = segue.destination as? SadViewController{
            sad.momentStory = accomplishment
            sad.user = name
        }
            
        else if let fine = segue.destination as? FineViewController{
            fine.user = name
        }
            
        else if let happy = segue.destination as? HappyViewController{
            happy.user = name
        }
        
    }
}
