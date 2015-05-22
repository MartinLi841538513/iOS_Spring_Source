    //
//  LoginViewOperation.m
//  Club
//
//  Created by dongway on 14-8-10.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "SharedAction.h"
#import "SVProgressHUD.h"
#import "JSONModelLib.h"
#import "Status.h"

@implementation SharedAction





+(void)operationAfterFailActionWithUrl:(NSString *)url andPatameters:(NSDictionary *)parameters andError:(NSError *)error withCompletion:(completion) completed{
    [self logUrl:url parameters:parameters];
    NSLog(@"Error: %@", error);
    completed(NO, nil);
    [SVProgressHUD dismiss];
}

+(void) logUrl:(NSString *)url parameters:(NSDictionary *)parameters {
    NSString *fullUrl = [NSString stringWithFormat:@"%@", url];
    
    int index = 0;
    for (NSString *key in parameters) {
        if (index == 0) {
            fullUrl = [NSString stringWithFormat:@"%@%@", fullUrl, @"?"];
        } else {
            fullUrl = [NSString stringWithFormat:@"%@%@", fullUrl, @"&"];
        }
        fullUrl = [NSString stringWithFormat:@"%@%@=%@", fullUrl, key, parameters[key]];
        index ++;
    }
    NSLog(@"*** url ***: %@", fullUrl);
}


//+(void)setUMessageTagsWithUser:(UserInfo *)user{
////    [UMessage removeAllTags:^(NSSet *responseTags, NSInteger remain, NSError *error) {
////        if (error) {
////            NSLog(@"responseTags=%@  remain=%ld  error=%@",responseTags,(long)remain,error);
////        }else{
////            NSArray *tags = [NSArray arrayWithObjects:user.loginname,user.nickname,user.realname,user.mobile,user.iccard,user.city,user.sname,user.address,user.version_name,[NSString stringWithFormat:@"%f",user.amount_red],[NSString stringWithFormat:@"%f",user.amount],[NSString stringWithFormat:@"%ld",(long)user.mid],[NSString stringWithFormat:@"%ld",(long)user.sid], nil];
////            [UMessage addTag:tags response:^(NSSet *responseTags, NSInteger remain, NSError *error) {
////                if (error) {
////                    NSLog(@"responseTags=%@  remain=%ld  error=%@",responseTags,(long)remain,error);
////                }
////            }];
////        }
////    }];
//}
+(void)show
{
    [SVProgressHUD show];
}
+(void)dismiss
{
    [SVProgressHUD dismiss];
}
+(void)showError
{
    [SVProgressHUD showErrorWithStatus:@"两次输入密码不相同"];
    
}
+(void)showErrorDataError
{
    [SVProgressHUD showErrorWithStatus:@"数据加载失败"];
    
}
+(void)showErrorInput
{
    [SVProgressHUD showErrorWithStatus:@"输入不能为空"];
}
+(void)showErrorNoData
{
    [SVProgressHUD showErrorWithStatus:@"当前没有数据"];
}
+(void)showErrorNoMoreData
{
    [SVProgressHUD showErrorWithStatus:@"没有更多的数据"];
}

//下面的alertview的tag 1是余额不足2是无会员卡 4是密码错误
+(void)showErrorWithStatus:(NSInteger)status andError:(NSString *)error witViewController:(UIViewController *)viewController{
     UIAlertView *alertView;
    switch (status) {
        case 2:
            [SVProgressHUD dismiss];
            break;
        case 1:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case 801:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  802:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  803:
            alertView = [[UIAlertView alloc]initWithTitle:@"余额不足" message:@"请到小区所在生活馆及时充值" delegate:viewController cancelButtonTitle:@"取消" otherButtonTitles:@"现在去充值", nil];
            alertView.tag=1;
            alertView.alertViewStyle = UIAlertViewStyleDefault;
            [alertView show];
            [SVProgressHUD dismiss];
            break;
        case  804:
            alertView= [[UIAlertView alloc]initWithTitle:@"无会员卡" message:@"请到小区所在生活馆购买会员卡" delegate:viewController cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
            alertView.tag =2;
            alertView.alertViewStyle = UIAlertViewStyleSecureTextInput;
            [alertView show];
             [SVProgressHUD dismiss];
            break;
        case  805:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  806:
            alertView = [[UIAlertView alloc]initWithTitle:@"密码错误" message:@"支付密码错误请重新输入" delegate:viewController cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
            alertView.tag=4;
            alertView.alertViewStyle = UIAlertViewStyleSecureTextInput;
            [alertView show];
             [SVProgressHUD dismiss];
            break;
        case  807:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  808:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  809:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  810:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  811:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  820:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  821:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  822:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  823:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  824:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  825:
            alertView = [[UIAlertView alloc]initWithTitle:@"您的账号在其他设备上登录" message:@"是否要重新登录" delegate:viewController cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
            alertView.tag=5;
            alertView.alertViewStyle = UIAlertViewStyleDefault;
            [alertView show];
            [SVProgressHUD dismiss];
        break;
        case  826:
            [SVProgressHUD showErrorWithStatus:error];
            break;
        case  827:
            alertView = [[UIAlertView alloc]initWithTitle:@"需要登录以后才能使用该功能" message:@"是否要去登录" delegate:viewController cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
            alertView.tag=6;
            alertView.alertViewStyle = UIAlertViewStyleDefault;
            [alertView show];
            [SVProgressHUD dismiss];
            break;
        default:
            [SVProgressHUD showErrorWithStatus:error];
            break;
    }
}



//若time ealier now 则设置notifyTime==time；若time later now ，则设置notifyTime = time+one day；
+(NSDate *)notifyTime:(NSString *)time{
    NSDate *notifyTime = nil;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//    NSString *strDate = [dateFormatter stringFromDate:[NSDate date]];
//    NSString *dateString = [NSString stringWithFormat:@"%@ %@",strDate,time];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:time];
    if ([[date laterDate:[NSDate date]] isEqual:date]) {
        notifyTime = date;
    }else{
        NSTimeInterval secondsPerDay = 24*60*60;
        notifyTime = [date dateByAddingTimeInterval:secondsPerDay];
    }
    NSLog(@"设置本地推送时间:%@",[dateFormatter stringFromDate:notifyTime]);
    return notifyTime;
}
//对比当前时间是不是在所需设置的时间之前
+(BOOL)notifyTime2:(NSString *)time{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:time];
    if ([[date laterDate:[NSDate date]] isEqual:date]) {
        return NO;
    }else{
        return YES;
    }
}

+(void)removeLocalPushNotificationWithType:(NSString *)type
{
    UIApplication* app=[UIApplication sharedApplication];
    //获取当前应用所有的通知
    NSArray* localNotifications=[app scheduledLocalNotifications];
    if (localNotifications) {
        for (UILocalNotification* notification in localNotifications) {
            NSDictionary* dic=notification.userInfo;
            if (dic) {
                NSString* key=[dic objectForKey:@"type"];
                if ([key isEqualToString:type]) {
                    //取消推送 （指定一个取消）
                    [app cancelLocalNotification:notification];
                    break;
                }
            }
        }
    }
}

//+(void)loginAggane
//{
//    SharedData *sharedData = [SharedData sharedInstance];
//    NSString *name = sharedData.loginname;
//    NSString *password = sharedData.password;
//    NSString *urlString = [NSString stringWithFormat:Base_Member_Login_URL,name,password];
//    [SVProgressHUD showWithStatus:@"正在加载用户信息"];
//    [Member_Login getModelFromURLWithString:urlString completion:^(Member_Login *model,JSONModelError *error){
//        if (model.status==2) {
//            sharedData.user=model.info;
//            sharedData.loginStatus=@"YES";
//            [SharedAction setUMessageTagsWithUser:model.info];
//        }else{
//            [SVProgressHUD showErrorWithStatus:model.error];
//        }
//        NSLog(@"%@",urlString);
//        [SVProgressHUD showSuccessWithStatus:@"登录成功完成"];
//   }];
//}
+(void)commonActionWithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object withDone:(doneWithObject)done{
    NSLog(@"status=%ld url=%@ message=%@",(long)status,url,error);
    if (!jsonError) {
        if (status==2||status==808||status==822) {
            done(object);
            if (status==2) {
                [SVProgressHUD dismiss];
            }else{
             [SVProgressHUD showSuccessWithStatus:error];
            }
        }else{
            if (error==nil||[error isEqualToString:@""])
            {
                [SVProgressHUD dismiss];
            }else{
                [SVProgressHUD showErrorWithStatus:error];
            }
        }
    }else{
        NSLog(@"%@",jsonError);
    }
}
+(void)commonActionWithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object withDoneAndStatus:(doneWithObjectAndStatus)done{
    NSLog(@"status=%ld url=%@ message=%@",(long)status,url,error);
    if (!jsonError) {
        done((int)status,object);
    }else{
        NSLog(@"%@",jsonError);
    }
}

+(void)commonActionWithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object inTabBarController:(UITabBarController *)tabBarController withDone:(doneWithObject)done{
    NSLog(@"status=%ld url=%@ message=%@",(long)status,url,error);
    if (!jsonError) {
        if (status==808||status==806) {
            done(object);
            [SVProgressHUD showSuccessWithStatus:error];
        }else if(status==1){
            done(object);
            [SVProgressHUD showSuccessWithStatus:@"操作成功"];
        }else{
            if (error==nil||[error isEqualToString:@""])
            {
                [SVProgressHUD dismiss];
            }else{
                [SharedAction showErrorWithStatus:status andError:error witViewController:tabBarController];
            }
        }
    }else{
        NSLog(@"%@",jsonError);
    }
}

/*
    请求失败还需要做处理
 */
+(void)commonAction2WithUrl:(NSString *)url andStatus:(NSInteger)status andError:(NSString *)error andJSONModelError:(JSONModelError *)jsonError andObject:(id)object inTabBarController:(UITabBarController *)tabBarController withDone:(done)done{
    NSLog(@"status=%ld url=%@ message=%@",(long)status,url,error);
    if (!jsonError) {
        if(status==1){
            done(YES,object);
            [SVProgressHUD showSuccessWithStatus:@"操作成功"];
        }else{
            done(NO,object);
            if (error==nil||[error isEqualToString:@""])
            {
                [SVProgressHUD dismiss];
            }else{
                [SharedAction showErrorWithStatus:status andError:error witViewController:tabBarController];
            }
        }
    }else{
        NSLog(@"%@",jsonError);
    }
}



-(void)headerRereshing{
}
-(void)footerRereshing{
}







/*
 数量减1
 */
+(NSString *)reduceNumber:(UILabel *)countLabel{
    int currentCount = [countLabel.text intValue];
    if (currentCount>0) {
        currentCount--;
    }
    return [NSString stringWithFormat:@"%d",currentCount];
}

/*
 数量＋1
 */
+(NSString *)addNumber:(UILabel *)countLabel{
    int currentCount = [countLabel.text intValue];
    if (currentCount<20) {
        currentCount++;
    }
    return [NSString stringWithFormat:@"%d",currentCount];
}


@end
