//
//  SadViewController.swift
//  FiaFia
//
//  Created by Elizabeth Ostrow on 8/12/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class SadViewController: UIViewController {
    
    
    @IBOutlet weak var moment: UILabel!
    var momentStory: String = ""
    var user: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moment.text = momentStory
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let mood = MoodCoreData(entity:MoodCoreData.entity(), insertInto: context) 
            mood.date = Date.init()
            mood.mood = "sad"
            try? context.save()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let back = segue.destination as? SurveyViewController{
            back.name = user
        }
    }
}
