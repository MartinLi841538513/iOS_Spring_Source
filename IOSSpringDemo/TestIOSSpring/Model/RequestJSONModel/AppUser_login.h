#import "Status.h"#import "Userfunds.h"#import "Userinfo.h"@interface AppUser_loginData : JSONModel
@property(nonatomic,strong)Userfunds<Optional> *userfunds;
@property(nonatomic,strong)Userinfo<Optional> *userinfo;
@end
@interface AppUser_login : Status
@property(nonatomic,strong)AppUser_loginData<Optional> *data;
@end
