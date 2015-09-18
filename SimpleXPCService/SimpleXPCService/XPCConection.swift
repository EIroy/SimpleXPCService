//
//  ImageLoader.swift
//  SimpleXPCService
//
//  Created by Admin on 16.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import Foundation

class SimpleConnectionController: NSObject {
    lazy var connection: NSXPCConnection = {
        let result = NSXPCConnection(serviceName: "com.mipt.test")
        result.remoteObjectInterface = NSXPCInterface(withProtocol: SimpleProtocol.self)
        return result
    }()
    
    var proxy: SimpleProtocol {
        return (self.result.connection as? ServiceProtocol)!
    }
    
    func start() {
        self.connection.resume()
    }
    func stop() {
        self.connection.invalidate()
    }
}
echo # SimpleXPCService >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/EIroy/SimpleXPCService.git
git push -u origin master