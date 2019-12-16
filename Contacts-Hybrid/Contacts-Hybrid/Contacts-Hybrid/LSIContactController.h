//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// What property attributes?
// nonnull = not an optional: NSArray
// nullable = is an optional: NSArray?

// Lightweight generics: [Contact]  or NSArray<Contact>
@property (nonatomic, readonly, copy, nonnull) NSArray<Contact *> *contacts;

@end
