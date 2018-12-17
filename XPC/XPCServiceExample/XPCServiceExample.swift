//
//  XPCServiceExample.h
//  XPCServiceExample
//
//  Created by Bumseok Lee on 20181016.
//  Copyright © 2018 Bumseok Lee. All rights reserved.
//

import Foundation

class XPCServiceExample: NSObject, XPCServiceExampleProtocol {
    func upperCaseString(_ string: String, withReply reply: @escaping (String) -> Void ) {
        let response = string.uppercased()
        reply(response)
    }
}
