//
//  OliveappAuthorityUtility.m
//  AppDemoPresale
//
//  Created by Xiaoyang Lin on 16/8/31.
//  Copyright © 2016年 Oliveapp. All rights reserved.
//
@import AVFoundation;
@import UIKit;
#import "OliveappAuthorityUtility.h"

@interface OliveappAuthorityUtility()<UIAlertViewDelegate>

@end
@implementation OliveappAuthorityUtility


+ (BOOL) requestCameraAuthority {
    AVAuthorizationStatus AVstatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];//相机权限
    if (AVstatus == AVAuthorizationStatusNotDetermined) {
         [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
             //相机权限
             if (granted) {
                 NSLog(@"Authorized");
             } else {
                 NSLog(@"Denied or Restricted");
             }}];
    } else if (AVstatus == AVAuthorizationStatusDenied) {
        [self handleCameraDeny];
        return NO;
    } else if (AVstatus == AVAuthorizationStatusAuthorized) {
    } else {
    }
    return YES;
}

/**
 *  跳转到设置界面
 */
+ (void) handleCameraDeny {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil message:@"请到设置中允许蓝领贷访问你的相机" delegate:self cancelButtonTitle:nil otherButtonTitles:@"设置", nil];
    [alert show];
}

+ (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"点击取消");
    [[UIApplication sharedApplication] openURL:[NSURL  URLWithString:UIApplicationOpenSettingsURLString]];
}

- (void) requestAblumAuthority {
    
}
@end
