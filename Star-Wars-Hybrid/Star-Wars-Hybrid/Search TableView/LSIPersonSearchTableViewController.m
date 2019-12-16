//
//  LSIPersonSearchTableViewController.m
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "LSIPerson.h"
#import "Star_Wars_Hybrid-Swift.h"

@interface LSIPersonSearchTableViewController () <UISearchBarDelegate>

// TODO: Create a PersonController.swift and make it an instance variable

@property (nonatomic) NSArray<LSIPerson *> *people;
@property (nonatomic) PersonController *personController;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	// TODO: Create controller
	self.personController = [[PersonController alloc] init];
	
	// TODO: call the API
	
	[self.personController searchForPeopleWith:@"Skywalker" completion:^(NSArray<LSIPerson *> * _Nullable people, NSError * _Nullable error) {
		NSLog(@"Searched!");
		
		
	}];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
	// TODO: Implement number of rows
	
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	
	// TODO: Implement a custom cell named PersonTableViewCell.swift
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
	// TODO: Set the cell to the current Person object
	
	
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
	
	// TODO: Search for a person using the searchBar.text
    
	// TODO: Save the result and have the UI update itself
}

@end
