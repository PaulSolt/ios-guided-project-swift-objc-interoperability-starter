//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

// Swift (model) -> Objective-C (model controller) -> Swift (Table View)

//import "LSIContactController.h" // Does not work! Use bridging header.

class ContactsTableViewController: UITableViewController {
	
    let contactsController = ContactController()
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
        tableView.reloadData()
	}
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsController.contacts.count
	}
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let contact = contactsController.contacts[indexPath.row]
        
        // Question: Why don't I see my properties?
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.relationship
        
        return cell
    }

}
