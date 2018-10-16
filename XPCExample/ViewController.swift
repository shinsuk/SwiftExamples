//
//  ViewController.swift
//  XPCExample
//
//  Created by Bumseok Lee on 20181016.
//  Copyright © 2018 Bumseok Lee. All rights reserved.
//

import Cocoa
import XPCServiceExample

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let connection = NSXPCConnection(serviceName: "net.gwbs.apps.XPCServiceExample")
        connection.remoteObjectInterface = NSXPCInterface(with: XPCServiceExampleProtocol.self)
        connection.resume()

        let service = connection.remoteObjectProxyWithErrorHandler { (error) in
            print("Received error:", error)
        } as? XPCServiceExampleProtocol

        service?.upperCaseString("hello XPC", withReply: { (response) in
            print("Response from XPC service:", response)
        })
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

