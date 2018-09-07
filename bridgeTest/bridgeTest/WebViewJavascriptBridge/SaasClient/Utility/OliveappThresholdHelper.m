//
//  OliveappThresholdHelper.m
//  AppSampleYitu
//
//  Created by Xiaoyang Lin on 17/2/9.
//  Copyright © 2017年 Oliveapp. All rights reserved.
//

#import "OliveappThresholdHelper.h"

@implementation OliveappThresholdHelper


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.antiScreenThreshold = 1;
    }
    return self;
}

+ (NSString *) getThreshold: (NSUInteger) threshold {
    switch (threshold) {
        case 1:
            return @"low";
        case 2:
            return @"high";
        default:
            return @"low";
    }
}
@end
