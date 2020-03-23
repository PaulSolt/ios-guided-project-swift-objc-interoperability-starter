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

// NOTE: Only import the auto-generated Swift header in .m files, you will see
// build cycles when you build

@interface LSIContactController : NSObject

@property (nonatomic, readonly, copy, nonnull) NSArray<Contact *> *contacts;

@end
