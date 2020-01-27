//
//  LSIContactsController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 1/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactsController.h"
#import "Contacts_Hybrid-Swift.h" // "ProjectName-Swift.h"  Spaces/Special characters = "_"

@implementation LSIContactsController

- (instancetype)init {
	self = [super init];
	if (self) {
		_contacts = @[
			// How do I use Swift code in Objective-C
			[[Contact alloc] initWithName:@"Paul" relationship:@"Myself"],
			[[Contact alloc] initWithName:@"Steph" relationship:@"Wife"]
		];
	}
	return self;
}


@end
