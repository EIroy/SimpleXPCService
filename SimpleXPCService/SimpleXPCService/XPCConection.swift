//
//  ImageLoader.swift
//  SimpleXPCService
//
//  Created by Admin on 16.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Foundation
import XPCService

class SimpleConnectionController: NSObject {
    lazy var connection: NSXPCConnection = {
        let result = NSXPCConnection(serviceName: "com.mipt.test")
        result.remoteObjectInterface = NSXPCInterface(withProtocol: SimpleProtocol.self)
        return result
    }()
    
    var proxy: SimpleProtocol {
        return (self.connection as? SimpleProtocol)!
    }
    
    func start() {
        self.connection.resume()
    }
    func stop() {
        self.connection.invalidate()
    }
}
