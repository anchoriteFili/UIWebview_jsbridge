//
//  ShareData.m
//  AppDemoPresale
//
//  Created by Xiaoyang Lin on 16/3/10.
//  Copyright © 2016年 Oliveapp. All rights reserved.
//

#import "ShareData.h"

@interface ShareData()
@property int actionCandidateNumber;//候选动作总数
@end
@implementation ShareData


+ (instancetype)sharedInstance {
    static ShareData *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
        [_sharedInstance.actionListArray addObject:[NSNumber numberWithInt:3]];
        _sharedInstance.actionCandidateNumber = 1;
        _sharedInstance.actionCount = 1;
        _sharedInstance.inf = 100000000;
        _sharedInstance.actionTime = 10000;
        _sharedInstance.fixActionList = NO;
        _sharedInstance.model = @"release";
        _sharedInstance.fanpaiClsImageNumber = 1;
//      _sharedInstance.saasUrl = @"http://staging.yitutech.com";
        _sharedInstance.saasUrl = @"http://116.62.27.165:9500";
        _sharedInstance.testId = @"testId";
        _sharedInstance.saveRgb = NO;
        _sharedInstance.saveFanpaiCls = NO;
        _sharedInstance.saveOriginImage = NO;
        _sharedInstance.savePackage = NO;
        _sharedInstance.antiScreenThreshold = 1;
        _sharedInstance.withPrestart = YES;
    });
    
    return _sharedInstance;
}

/*
 * 重置动作序列
 */
- (void) resetActionListArray {
    
    NSLog(@"[BEGIN] fixActionListMethod");
    self.actionListArray = [[NSMutableArray alloc] init];
    for (int i = 0;i < self.actionCandidateNumber;++i) {
        [self.actionListArray addObject:@2];
    }
    NSLog(@"[END] fixActionListMethod");
}
@end
