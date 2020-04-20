//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 4/20/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// Why did I make this a class?
// ContactModelController -> Objective-C
// Collection (NSArray) of contacts?
// Can I use a primitive data type in Objective-C

// Swift struct is not supported in Objective-C
// You can't put a Swift struct into an NSArray class
// Must subclass from NSObject to use Swift in Objective-C

// Swift enum with associated values are also not supported in Objc

class Contact: NSObject {
    let name: String
    let relationship: String?
    
    init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
