//
//  XPCServiceExample.m
//  XPCServiceExample
//
//  Created by Bumseok Lee on 20181016.
//  Copyright © 2018 Bumseok Lee. All rights reserved.
//

import Foundation

class XPCServiceExampleDelegate: NSObject, NSXPCListenerDelegate {
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        let exportedObject = XPCServiceExample()
        newConnection.exportedInterface = NSXPCInterface(with: XPCServiceExampleProtocol.self)
        newConnection.exportedObject = exportedObject
        newConnection.resume()
        return true
    }
}
