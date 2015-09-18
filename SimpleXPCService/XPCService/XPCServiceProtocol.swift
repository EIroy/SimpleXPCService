//
//  XPCServiceProtocol.swift
//  SimpleXPCService
//
//  Created by Admin on 15.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Foundation

@objc
protocol SimpleProtocol: NSObjectProtocol {
    func generateSomeNumber(maxNumber: UInt32) -> Int
}