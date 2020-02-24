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
	
    // We need to expose Objc code files to Swift using the bridging header
    var contactController = LSIContactController()  // alloc/init
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactController.contacts.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
		
        if let contact = contactController.contacts[indexPath.row] as? Contact {
            cell.textLabel?.text = contact.name
            cell.detailTextLabel?.text = contact.relationship
        }
        
		return cell
	}

}
