//
//  LoadProtocol.swift
//  SimpleXPCService
//
//  Created by Admin on 16.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Foundation

protocol ImageLoadProtocol {
    func downloadImageAtURL(url: NSURL!, withReply: ((NSData!)->Void)!)
}