//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// NOTE 1: Swift struct cannot be used in Objective-C
// NOTE 2: All Swift classes must subclass NSObject to be visible in Objective-C
// NOTE 3: All symbols that you want to use need to marked with @objc
// NOTE 4: Enums with associated types cannot be used in Objc

@objc class Contact: NSObject {
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
