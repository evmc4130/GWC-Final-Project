//
//  form.swift
//  Fia
//
//  Created by Elizabeth Ostrow on 8/7/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class TextField: UITextField {
    @IBInspectable var key: String?
}
extension TextField: FormControl {
    var text1: String? {
        <#code#>
    }
    
    func clear() {
        text = nil
    }
}

final class SimpleFormViewController: UIViewController {
    @IBOutlet var form: Form!
    
    @IBAction func submit() {
//        print("Form Data:",
//              form["What is your name?"] ??
//              form["What is your greatest personal achievement?"] ?? <#default value#>,
//              form["What is your greatest academic/professional achievement?"] ?? <#default value#>,
//              form["What are some positive adjectives you would use to describe yourself?"] ?? <#default value#>,
//              form["Anything else?"] ?? <#default value#>')
    }
}
