//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

@implementation LSIContactController

// lazy array

// My instance variable (_contacts) doesn't exist because we made our property readonly

// When getter is overridden and we use readonly, we need to tell compiler to make
// a "backing" instance variable named _contacts
@synthesize contacts = _contacts;
- (NSArray<Contact *> *)contacts {
    if (!_contacts) {
        _contacts = [[NSArray alloc] init];
    }
    return _contacts;
}

// init
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
