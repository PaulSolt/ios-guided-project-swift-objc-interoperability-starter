//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// forward class declaration
@class Contact;
//@class LSIContact; // BUG: Does not work in Swift 5.1, don't rename Swift classes for Objc

// NOTE: Only import the auto-generated Swift header in .m files, you will see
// build cycles when you build

NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// Nullability flags + Lightweight Generics
// nonnull: [Contact]
// nullable: [Contact]?
// null_unspecified: [Contact]!
// null_resetable: [Contact]!
@property (nonatomic, readonly, copy, nonnull) NSArray<Contact *> *contacts;

@end
