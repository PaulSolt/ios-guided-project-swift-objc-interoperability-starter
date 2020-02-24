//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact; // Forward class declaration (Swift class)

NS_ASSUME_NONNULL_BEGIN

// Rename for Swift
NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// Add lightweight generics to give type information for Swift
@property (nonatomic, readonly) NSArray<Contact *> *contacts;

// addContact (add to database, firebase, etc)
// removeContact

@end

NS_ASSUME_NONNULL_END
