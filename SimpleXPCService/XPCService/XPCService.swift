//
//  XPCService.swift
//  SimpleXPCService
//
//  Created by Admin on 15.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Foundation

@objc
class SimpleService: NSObject, SimpleProtocol {
    func generateSomeNumber(maxNumber: UInt32) -> Int {
        let number = Int(arc4random_uniform(maxNumber))
        return number
    }
}