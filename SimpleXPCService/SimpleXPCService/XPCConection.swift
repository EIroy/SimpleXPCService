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
    private class func connectionToService() -> NSXPCConnection {
        let result = NSXPCConnection(serviceName: "mipt.XPCService")
        result.remoteObjectInterface = NSXPCInterface(withProtocol: SimpleProtocol.self)
        return result
    }
    
    var objectProxy: SimpleProtocol {
        return self.connection.remoteObjectProxy as! SimpleProtocol
    }
    
    
    struct Singleton {
        static let instance = SimpleConnectionController()
    }
    class var sharedInstance: SimpleConnectionController { return Singleton.instance }
    
    private let connection = SimpleConnectionController.connectionToService()
    override init() {
        super.init()
        self.connection.resume()
    }
    deinit {
        self.connection.invalidate()
    }
}