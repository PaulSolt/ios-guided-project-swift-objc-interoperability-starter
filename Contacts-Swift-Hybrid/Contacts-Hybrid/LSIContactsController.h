//
//  LSIContactsController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 1/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact; // forward declare the Swift class

@interface LSIContactsController : NSObject

// 1. Lightweight generics
// 2. Nullability
// 3. Change names of classes (Bug: going back and forth)

@property (nonatomic, readonly) NSArray<Contact *> *contacts;

@end
