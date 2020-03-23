//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

// "Project_Name-Swift.h"
#import "Contacts_Hybrid-Swift.h"

@interface LSIContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

// 1. computed property for contacts

- (NSArray *)contacts {
    return [self.internalContacts copy];
}

// 2. Lazy initialization for internalContacts

- (NSMutableArray *)internalContacts {
    if (!_internalContacts) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return _internalContacts;
}

// 3. test data
- (void)addTestData {

    // In Objective-C we want to create a Contact from Swift
    // Import the Swift header
    
    [self.internalContacts addObjectsFromArray:@[
        [[Contact alloc] initWithName:@"Paul Solt" relationship:@"Myself"],
        [[Contact alloc] initWithName:@"Steph Solt" relationship:@"Wife"],
    ]];
}

@end
