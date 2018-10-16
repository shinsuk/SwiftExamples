//
//  main.m
//  XPCServiceExample
//
//  Created by Bumseok Lee on 20181016.
//  Copyright © 2018 Bumseok Lee. All rights reserved.
//

import Foundation

let delegate = XPCServiceExampleDelegate()
let listener = NSXPCListener.service()
listener.delegate = delegate
listener.resume()
