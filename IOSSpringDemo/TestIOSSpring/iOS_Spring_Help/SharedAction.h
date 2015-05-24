//
//  LoginViewOperation.h
//  Club
//
//  Created by dongway on 14-8-10.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <JSONModel.h>

typedef void (^completion)(BOOL completed, NSDictionary *data);
typedef void (^done)(BOOL completed,id object);
typedef void (^finished)(NSDictionary *info);
typedef void (^doneWithObject)(id object);
typedef void (^doneWithObjectAndStatus)(int status,id object);
@interface SharedAction : NSObject

/*
 1，在当前viewcontroller调出loginviewController
 2，给当前viewcontroller添加监听事件
 */

+(void)showErrorWithStatus:(NSInteger)status andError:(NSString *)error witViewController:(UIViewController *)viewController;
+(void)showError;
+(void)show;
+(void)dismiss;
+(void)showErrorInput;
+(void)showErrorDataError;
+(void)showErrorNoData;
+(void)showErrorNoMoreData;
+(void)commonActionWithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object withDone:(doneWithObject)done;
+(void)commonActionWithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object inTabBarController:(UITabBarController *)tabBarController withDone:(doneWithObject)done;
+(void)commonAction2WithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object inTabBarController:(UITabBarController *)tabBarController withDone:(done)done;
//+(void)loginAggane;
//+(void)baseBalanceWithToken:(NSString *)token andUser_type:(NSInteger)user_type withTabBarViewController:(UITabBarController*)tabBarController doneObject:(doneWithObject)done;
+(void)removeLocalPushNotificationWithType:(NSString *)type;
+(BOOL)notifyTime2:(NSString *)time;

+(NSString *)reduceNumber:(UILabel *)countLabel;
+(NSString *)addNumber:(UILabel *)countLabel;

@end
