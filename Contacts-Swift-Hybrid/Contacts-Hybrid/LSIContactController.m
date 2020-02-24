//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Paul Solt on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"

// Import Swift auto-generated header file, there is no code
// completion, and you just type it in the form:
// #import "Project_Name-Swift.h"  // all - or " " (spaces) will be _ (underscores)
#import "Contacts_Hybrid-Swift.h"

// Class extension (private properties)

@interface LSIContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation LSIContactController

// What do I need to do in my initializer

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        // TODO: Remove for production
        [self addTestContacts];
    }
    return self;
}

- (void)addTestContacts {
    // I need to import our Swift code into Objective-C
    
    Contact *myself = [[Contact alloc] initWithName:@"Paul Solt" relationship:@"Myself"];
    Contact *steph = [[Contact alloc] initWithName:@"Steph Solt" relationship:@"Wife"];
    
    [self.internalContacts addObjectsFromArray:@[myself, steph]];
}

// NSArray = immutable (let array = [3, 4, 5]) ie: constant
// NSMutableArray = mutable, modify it (var array = [3, 4, 5, 6])

// NSMutableArray -> NSArray  use: [array copy]
// NSArray -> NSMutableArray use: [array mutableCopy]

- (NSArray *)contacts {
    return [_internalContacts copy];
}

@end
