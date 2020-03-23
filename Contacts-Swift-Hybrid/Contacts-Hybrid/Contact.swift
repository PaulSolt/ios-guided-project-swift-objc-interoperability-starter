//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
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
