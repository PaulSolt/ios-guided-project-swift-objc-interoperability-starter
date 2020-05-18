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
class Contact: NSObject {
    var name: String
    var relationship: String?
    
    init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
