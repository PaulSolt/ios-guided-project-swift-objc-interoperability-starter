//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
	
	// Swift class using an Objective-C class (Use Bridging Header)
	let contactsController = ContactsController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return contactsController.contacts.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
		
		let contact = contactsController.contacts[indexPath.row]
		cell.textLabel?.text = contact.name
		cell.detailTextLabel?.text = contact.relationship
		
		return cell
	}

}
