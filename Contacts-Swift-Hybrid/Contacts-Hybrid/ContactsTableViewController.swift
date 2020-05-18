//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
//#include "LSIContactController.h" // Won't work in Swift, need to use bridging header

class ContactsTableViewController: UITableViewController {
	
    var contactController = LSIContactController()
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactController.contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let contact = contactController.contacts[indexPath.row]
//        let c2 = Contact(
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.relationship
        
        return cell
    }

}
