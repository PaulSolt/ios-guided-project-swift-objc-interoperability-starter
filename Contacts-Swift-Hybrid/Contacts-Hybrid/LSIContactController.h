//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

@property (nonatomic, readonly) NSArray *contacts;

// addContact (add to database, firebase, etc)
// removeContact

@end

NS_ASSUME_NONNULL_END
