//
//  ViewController.swift
//  SimpleXPCService
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SimpleConnectionController.sharedInstance.objectProxy.generateSomeNumber(1000)

    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

