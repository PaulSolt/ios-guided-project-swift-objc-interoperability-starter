//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Paul Solt on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LSIContactControllerDelegate <NSObject>

- (void)notifyAll;

@end

@class Contact; // Forward class declaration (Swift class)

// Rename for Swift
NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// Add lightweight generics to give type information for Swift
@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;

// @property (weak) id <XYZPieChartViewDataSource> dataSource;

@property (nonatomic, weak, nullable) id<LSIContactControllerDelegate> delegate;

// Nullability / (Optional)

// nullable = [Contact]?
// nonnull = [Contact]
// nil_resettable = [Contact]?   // UITextField.text (setting to nil sets it back to "")
// nil_unspecified* = [Contact]!


// addContact (add to database, firebase, etc)
// removeContact

@end
