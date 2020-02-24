//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
//#import "LSIContactController.h"  Can't import Objc like this, use the bridging header

// TableVC (Swift)
// ContactController (Objc)
// Contact (Swift)

class ContactsTableViewController: UITableViewController {
	
    // Rename an Objective-C class for Swift

    // We need to expose Objc code files to Swift using the bridging header
    var contactController = ContactController()  // alloc/init
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactController.contacts.count
	}
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        // contacts array is now a [Contact], not [Any]
        let contact = contactController.contacts[indexPath.row]

        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.relationship
        
        return cell
    }
    
    // We can drop the prefix from the name in Swift
    // NSDate -> Date
    // NSArray -> Array
    

}
