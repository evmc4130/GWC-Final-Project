//
//  FineViewController.swift
//  FiaFia
//
//  Created by Elizabeth Ostrow on 8/12/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import UIKit

class FineViewController: UIViewController {
    
    var user: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let mood = MoodCoreData(entity:MoodCoreData.entity(), insertInto: context)
            mood.date = Date.init()
            mood.mood = "fine"
            try? context.save()
            print("Saving fine moment")
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let back = segue.destination as? SurveyViewController{
            back.name = user
        }
    }
}
