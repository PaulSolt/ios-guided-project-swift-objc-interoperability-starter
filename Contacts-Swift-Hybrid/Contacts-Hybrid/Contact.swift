//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// Why class and not struct?
// Swift structs are not compatible with Objective-C structs
// struct in Objective-C is from C

// Rule 1: must use a class
// Rule 2: subclass from NSObject
// Rule 3:

class Contact: NSObject {
    
    var name: String
    var relationship: String?
    
    init(name: String, relationship: String?) {
        // Swift use self.name, but in Objective-C use _name = name
        self.name = name
        self.relationship = relationship
        
        super.init()
    }
}
