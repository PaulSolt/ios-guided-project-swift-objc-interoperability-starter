//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
// import LSIContactController // Won't work! Imports are for modules

// "importing" Objective-C into Swift to make our model controller

class ContactsTableViewController: UITableViewController {
	
	// Objective-C class being used in Swift
	lazy private var contactController = ContactController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return contactController.contacts.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
		
		// Lightweight generics to make it so we don't have to worry about the class type
		let contact = contactController.contacts[indexPath.row]
		cell.textLabel?.text = contact.name
		cell.detailTextLabel?.text = contact.relationship ?? ""
		
		return cell
	}

}
