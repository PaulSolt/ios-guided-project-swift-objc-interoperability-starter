//
//  LSIContactsController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 1/27/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact; // forward declare the Swift class
//@class LSIContact;

@interface LSIContactsController : NSObject

// 1. Lightweight generics
// 2. Nullability
// 3. Change names of classes (Bug: going back and forth)

@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;

/*
 Nullability
 
 * nullable - Optional in Swift (nil or value)
 * nonnull - Not an Optional (can never be nil)
 * nil_resettable - UITextField.text = nil (Sets the text to "")
 * nil_unspecified - Default (Implicitly unwrapped optional)
 
 */



@end
