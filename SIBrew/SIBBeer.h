//
//  SIBBeer.h
//  SIBrew
//
//  Created by David Ohayon on 11/20/13.
//  Copyright (c) 2013 Startup Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIBBeer : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic, getter = isOrganic) BOOL organic;
@property (nonatomic, strong) NSString *fullness;
@property (nonatomic) id delegate;

- (instancetype)initWithDictionary:(NSDictionary*)dictionary;
- (void)takeNumberOfSips:(NSInteger)numberOfSips;

@end

@protocol SIBBeerDelegate <NSObject>

- (void)beerFullnessDidChange;

@end
