//
//  Login2ViewController.m
//  TestIOSSpring
//
//  Created by Gao Huang on 15/5/24.
//  Copyright (c) 2015年 Martin. All rights reserved.
//

#import "Login2ViewController.h"

#import "AppUserService.h"
#import "AppUser_login.h"
#import "Userfunds.h"
#import "Userinfo.h"
@interface Login2ViewController ()

@end

@implementation Login2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	AppUserService *service = [AppUserService new];
	[service appUser_loginWithUsername:@"wangweiwei1001" andPassword:@"123456" inTabBarController:self.tabBarController withDone:^(AppUser_loginData *data){
//		NSLog(@"AppUser_logindata:%@",data);
        Userinfo *userinfo = data.userinfo;
        Userfunds *userfunds = data.userfunds;
        NSLog(@"userinfo.account:%@",userinfo.account);
        NSLog(@"userinfo.creattime:%@",userinfo.creattime);
        NSLog(@"userinfo.memberId:%@",userinfo.memberId);
        NSLog(@"userinfo.rankId:%@",userinfo.rankId);
        NSLog(@"userinfo.salt:%@",userinfo.salt);
        NSLog(@"userfunds.money:%@",userfunds.money);
        NSLog(@"userfunds.payPoints:%@",userfunds.payPoints);

	}];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
