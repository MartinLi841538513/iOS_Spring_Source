#import "JSONModel.h"
@protocol Userinfo <NSObject>
@end
@interface Userinfo : JSONModel
@property(nonatomic,strong)NSString<Optional> *account;
@property(nonatomic,strong)NSString<Optional> *recommended;
@property(nonatomic,strong)NSString<Optional> *taobaoAccount;
@property(nonatomic,strong)NSString<Optional> *nickName;
@property(nonatomic,strong)NSString<Optional> *status;
@property(nonatomic,strong)NSString<Optional> *thumbnail;
@property(nonatomic,strong)NSString<Optional> *verification;
@property(nonatomic,strong)NSString<Optional> *verifyType;
@property(nonatomic,strong)NSString<Optional> *sex;
@property(nonatomic,strong)NSString<Optional> *jidongAccount;
@property(nonatomic,strong)NSString<Optional> *creattime;
@property(nonatomic,strong)NSString<Optional> *name;
@property(nonatomic,strong)NSString<Optional> *salt;
@property(nonatomic,strong)NSString<Optional> *verifyUrl;
@property(nonatomic,strong)NSNumber<Optional> *dr;
@property(nonatomic,strong)NSString<Optional> *email;
@property(nonatomic,strong)NSString<Optional> *identifyCode;
@property(nonatomic,strong)NSString<Optional> *phone;
@property(nonatomic,strong)NSString<Optional> *veriftime;
@property(nonatomic,strong)NSString<Optional> *avatar;
@property(nonatomic,strong)NSString<Optional> *memberId;
@property(nonatomic,strong)NSString<Optional> *password;
@property(nonatomic,strong)NSString<Optional> *rankId;
@property(nonatomic,strong)NSString<Optional> *remark;
@end
