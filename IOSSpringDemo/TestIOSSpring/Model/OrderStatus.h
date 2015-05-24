#import "JSONModel.h"
@protocol OrderStatus <NSObject>
@end
@interface OrderStatus : JSONModel
@property(nonatomic,strong)NSString<Optional> *DESCRIBE;
@property(nonatomic,strong)NSString<Optional> *CONFIGVALUE;
@end
