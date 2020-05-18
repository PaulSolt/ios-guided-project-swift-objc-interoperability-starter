//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Previous versions of Xcode (<11.4) have failed to compile.
// May see a build cycle error or something (buggy)
//@class LSIContact;
@class Contact;

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// Using lightweight generics to provide type information (so it's easier to use in Swift)
// [Any] -> [Contact]
@property (nonatomic, readonly) NSArray<Contact *> *contacts;  // default property/variable value is nil or 0

@end

NS_ASSUME_NONNULL_END
