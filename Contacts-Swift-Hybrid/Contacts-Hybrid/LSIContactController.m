//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 4/20/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

// All special symbols or dashs are replaced with an _ (Project-Name)
// #import "Project_Name-Swift.h"

// Control + Command + Click to jump to this file (debug a problem)
#import "Contacts_Hybrid-Swift.h"

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSArray alloc] initWithObjects:
                     [[Contact alloc] initWithName:@"Paul Solt" relationship:@"Myself"],
                     [[Contact alloc] initWithName:@"Steph Solt" relationship:@"Wife"],
                     nil];
    }
    return self;
}


@end
