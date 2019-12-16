//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

// 1. Always need to subclass from NSObject to use the class in Objective-C
// 2. Any property, class, method, init needs to be marked with @objc

@objc class Contact: NSObject {
	@objc var name: String
	@objc var relationship: String?
	
	@objc init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}	
}
