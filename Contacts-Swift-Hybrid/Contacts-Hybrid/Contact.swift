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
// Rule 3: use @objc to expose properties, classes, methods to Objective-C
// Rule 4: You must have Swift code building (added to target) or you won't get this file generated

@objc class Contact: NSObject {
    
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        // Swift use self.name, but in Objective-C use _name = name
        self.name = name
        self.relationship = relationship
        
        super.init()
    }
}
