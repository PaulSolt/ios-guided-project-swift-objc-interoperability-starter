//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

class Contact {
	var name: String
	var relationship: String?
	
	init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}	
}
