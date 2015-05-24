#import "JSONModel.h"
@protocol Userfunds <NSObject>
@end
@interface Userfunds : JSONModel
@property(nonatomic,strong)NSString<Optional> *memberId;
@property(nonatomic,strong)NSNumber<Optional> *money;
@property(nonatomic,strong)NSNumber<Optional> *frozenMoney;
@property(nonatomic,strong)NSNumber<Optional> *points;
@property(nonatomic,strong)NSNumber<Optional> *payPoints;
@end
