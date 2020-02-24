//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// QUESTION: Why is this a class?
// Swift structs do not work in Objective-C, so we need to use a class

@objc class Contact: NSObject {
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
