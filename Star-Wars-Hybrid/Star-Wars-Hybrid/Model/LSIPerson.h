//
//  LSIPerson.h
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import <Foundation/Foundation.h>

// TODO: Create an instance of the LSIPerson to see how it's properties and initializers are imported into Swift

// TODO: Add nullabilty annotations

NS_SWIFT_NAME(Person)
@interface LSIPerson : NSObject

// What should I add for nullability annotations?
// If the data can have null values:
// 	 1. provide a default
//   2. use an optional type

@property (nonatomic, copy, readonly, nonnull) NSString *name;
@property (nonatomic, copy, readonly, nonnull) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly, nullable) NSString *eyeColor;

- (nonnull instancetype)initWithName:(nonnull NSString *)name
                   birthYear:(nonnull NSString *)birthYear
                      height:(double)height
                    eyeColor:(nullable NSString *)eyeColor;

// Bad dictionary? Empty? Let's return nil if the values are missing
- (nullable instancetype)initWithDictionary:(nonnull NSDictionary *)dictionary;


@end
