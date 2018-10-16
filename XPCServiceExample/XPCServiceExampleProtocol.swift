//
//  XPCServiceExampleProtocol.h
//  XPCServiceExample
//
//  Created by Bumseok Lee on 20181016.
//  Copyright © 2018 Bumseok Lee. All rights reserved.
//

import Foundation

@objc
public protocol XPCServiceExampleProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void)
}
