//
//  XHLaunchAdConst.m
//  XHLaunchAdExample
//
//  Created by zhuxiaohui on 2017/9/18.
//  Copyright © 2017年 it7090.com. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHLaunchAd

#import "XHLaunchAdConst.h"

NSString *const XHCacheImageUrlStringKey = @"XHCacheImageUrlStringKey";
NSString *const XHCacheVideoUrlStringKey = @"XHCacheVideoUrlStringKey";

NSString *const XHLaunchAdWaitDataDurationArriveNotification = @"XHLaunchAdWaitDataDurationArriveNotification";
NSString *const XHLaunchAdDetailPageWillShowNotification = @"XHLaunchAdDetailPageWillShowNotification";
NSString *const XHLaunchAdDetailPageShowFinishNotification = @"XHLaunchAdDetailPageShowFinishNotification";
NSString *const XHLaunchAdGIFImageCycleOnceFinishNotification = @"XHLaunchAdGIFImageCycleOnceFinishNotification";
NSString *const XHLaunchAdVideoCycleOnceFinishNotification = @"XHLaunchAdVideoCycleOnceFinishNotification";
NSString *const XHLaunchAdVideoPlayFailedNotification = @"XHLaunchAdVideoPlayFailedNotification";

BOOL XHLaunchAdPrefersHomeIndicatorAutoHidden = NO;



@implementation XHLaunchAdConst

+(UIWindow *)getKeyWindow{
    
    if (@available(iOS 13.0 , *)){
        
        NSSet * scenes = UIApplication.sharedApplication.connectedScenes;
        
        for (UIWindowScene *sen in scenes) {
            if ([sen isKindOfClass:[UIWindowScene class]] && sen.activationState == UISceneActivationStateForegroundActive){
                UIWindow *window = sen.windows.firstObject;
                if([window isKindOfClass:[UIWindow class]]){
                    return window;
                }
            }
        }
    }
    
    if (@available(iOS 13.0 , *)){
        
        UIWindowScene *windowScene  = (UIWindowScene*)UIApplication.sharedApplication.connectedScenes.allObjects.firstObject;
        if([windowScene isKindOfClass:[UIWindowScene class]] && [windowScene.windows.firstObject isKindOfClass:[UIWindow class]]){
            return  windowScene.windows.firstObject;
        }
    }
    
    if (@available(iOS 16.0 , *)){
        if ([UIApplication.sharedApplication.windows.firstObject isKindOfClass:[UIWindow class]]){
            return  UIApplication.sharedApplication.windows.firstObject;
        }
    }
    
    UIWindow *window = UIApplication.sharedApplication.delegate.window;
    if (window && [window isKindOfClass:[UIWindow class ]]){
        return  window;
    }
    
    return  UIApplication.sharedApplication.keyWindow;
}


+(BOOL)iPhoneX{
    
    if (@available(iOS 11.0 , *)){
        return  XH_SAFEAREAINSETS.bottom > 0 ? YES : NO;
    }
    return NO;
}



@end
