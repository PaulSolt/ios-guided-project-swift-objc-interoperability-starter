//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 4/20/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward declaration
@class LSIContact;

// Use this macro to rename your class for use in Swift
NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// "Lightweight generics" make our Objective-C array types
// easier to use in Swift

// null_unspecified -> [Contact]!
// nullable -> [Contact]?
// nonnull -> [Contact]
// null_resettable -> [Contact]?

@property (nonatomic, readonly, copy, nonnull) NSArray<LSIContact *> *contacts;

@end
