//
//  SIBBeer.m
//  SIBrew
//
//  Created by David Ohayon on 11/20/13.
//  Copyright (c) 2013 Startup Institute. All rights reserved.
//

#import "SIBBeer.h"

@implementation SIBBeer

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    self = [super init];
    if (self) {
        self.name = dictionary[@"name"];
        if ([dictionary[@"isOrganic"] isEqualToString:@"N"]) {
            self.organic = NO;
        } else if ([dictionary[@"isOrganic"] isEqualToString:@"Y"]) {
            self.organic = YES;
        }
        self.fullness = @"full";
    }
    return self;
}

- (void)takeNumberOfSips:(NSInteger)numberOfSips {
    self.fullness = @"full";
    switch (numberOfSips) {
        case 0:
            break;
        
        case 1:
            self.fullness = @"pretty full";
            [self.delegate beerFullnessDidChange];
            break;
        
        case 2:
            self.fullness = @"its either half full OR half empty";
            [self.delegate beerFullnessDidChange];
            break;
            
        case 3:
            self.fullness = @"almost there";
            [self.delegate beerFullnessDidChange];
            break;
        
        case 4:
            self.fullness = @"time to get a new brew";
            [self.delegate beerFullnessDidChange];
            break;
        default:
            break;
    }
    
}

- (NSString*)description {
    NSMutableString *descString = @"".mutableCopy;
    [descString appendString:[NSString stringWithFormat:@"Name: %@\n", self.name]];
    NSString *organicString = @"NO";
    if (self.isOrganic) {
        organicString = @"YES";
    }
    [descString appendString:[NSString stringWithFormat:@"Organic: %@\n", organicString]];
    [descString appendString:[NSString stringWithFormat:@"Fullness: %@\n", self.fullness]];
    return descString;
}

@end
