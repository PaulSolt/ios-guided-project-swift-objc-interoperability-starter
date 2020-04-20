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

// Rename a Swift class for Objective-C 
//@objc(LSIContact) // This has been flakey for me, I don't recommend renaming Swift classes
// for Objective-C (unless Apple fixed this in Xcode 11.4)

// 3 things to expose a Swift object to Objective-C
// 1. Subclass from NSObject
// 2. Must be a class, not a Swift struct
// 3. Adding @objc for any property, method, init

//@objcMembers - expose all symbols to Objc
@objc class Contact: NSObject {
    @objc var name: String
    @objc let relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
    
    @objc func setName(name: String) {
        self.name = name
    }
    
    // add @objc to any method, property, init to see it in Objc
}
