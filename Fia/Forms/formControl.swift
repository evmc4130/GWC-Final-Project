//
//  formControl.swift
//  Fia
//
//  Created by Elizabeth Ostrow on 8/7/19.
//  Copyright © 2019 GANE Industries. All rights reserved.
//

import Foundation

@objc protocol FormControl {
    var key: String? { get }
    var text: String? { get }
    func clear()
}

class Form: NSObject {
    @IBOutlet var controls: [FormControl]?
    subscript(_ key: String) -> String? {
        return value(for: key)
    }
    func value(for key: String) -> String? {
        return controls?.first(where: { $0.key == key })?.text
    }
    func clear() {
        controls?.forEach { $0.clear() }
    }
}

