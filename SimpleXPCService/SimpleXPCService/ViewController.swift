//
//  ViewController.swift
//  SimpleXPCService
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    let connector = SimpleConnectionController.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        self.connector.objectProxy.generateSomeNumber(200) { result in
            print("the result is \(result)")
        }

    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

