//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 1/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// QUESTION: Why did I use a class?

// struct from Swift doesn't work in Objective-C
// Must use a class in Swift if we want to use it from Objective-C
// ModelController is going to be in Objective-C

class Contact {
	var name: String
	var relationship: String?
	
	init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}
}
