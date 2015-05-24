#import "JSONModel.h"
@protocol ParamMap <NSObject>
@end
@interface ParamMap : JSONModel
@property(nonatomic,strong)NSString<Optional> *status;
@property(nonatomic,strong)NSString<Optional> *orderSn;
@end
