//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// QUESTION: Why use a class in Swift?

// To use this in Objective-C we need to subclass from NSObject
// Swift Structs are not compatible with Objective-C structures

// Add a comment

// Rename class, properties, and methods using @objc(newNameForObjc)
// @objc(LSIContact) // Probably better to not rename class
class Contact: NSObject {
    @objc var name: String
    @objc var relationship: String?
    
// Default initializer
    @objc override init() {
        self.name = ""
        self.relationship = nil
        super.init()
    }
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
