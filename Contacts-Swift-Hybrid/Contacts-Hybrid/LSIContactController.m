//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

// "ModuleName-Swift.h" all special characters are _
#import "Contacts_Hybrid-Swift.h"

// Private properties -> class extension
// Swift extensions are like categories
@interface LSIContactController ()

@property NSMutableArray<Contact *> *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        // nil pointer when called will do nothing, or it will return 0 if asked a "question"
        _internalContacts = [[NSMutableArray alloc] init];
        
        // how do I use Swift in Objective-C?
        [_internalContacts addObject:[[Contact alloc] initWithName:@"Paul" relationship:@"Me"]];
        [_internalContacts addObject:[[Contact alloc] initWithName:@"Steph" relationship:@"Wife"]];
    }
    return self;
}

// getter -> make it a computed property by using our internal representation and making it readonly
- (NSArray<Contact *> *)contacts {
    return [self.internalContacts copy]; // mutable -> const (var -> let)
}


@end
