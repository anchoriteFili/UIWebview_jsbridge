//
//  OliveappThresholdHelper.h
//  AppSampleYitu
//
//  Created by Xiaoyang Lin on 17/2/9.
//  Copyright © 2017年 Oliveapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OliveappThresholdHelper : NSObject

@property NSUInteger antiScreenThreshold;

+ (NSString *) getThreshold: (NSUInteger) threshold;
@end
