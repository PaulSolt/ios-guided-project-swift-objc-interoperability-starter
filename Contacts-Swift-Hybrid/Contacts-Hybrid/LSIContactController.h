//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward class declaration (must use this for Swift -> Objective-C)
// You will get build cycle and strange errors (random) if you try to
// import the auto-generated Swift header file
@class Contact;
//@protocol ContactDelegate;

NS_ASSUME_NONNULL_BEGIN

// Renames code for Swift, so it feels like native Swift in Swift
NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// collection of contacts?

// lightweight generics
@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
