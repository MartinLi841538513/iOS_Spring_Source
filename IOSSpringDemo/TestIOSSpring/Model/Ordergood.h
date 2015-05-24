#import "JSONModel.h"
@protocol Ordergood <NSObject>
@end
@interface Ordergood : JSONModel
@property(nonatomic,strong)NSString<Optional> *isReal;
@property(nonatomic,strong)NSString<Optional> *maketime;
@property(nonatomic,strong)NSString<Optional> *modifytime;
@property(nonatomic,strong)NSString<Optional> *colorId;
@property(nonatomic,strong)NSString<Optional> *sizeVal;
@property(nonatomic,strong)NSString<Optional> *skuId;
@property(nonatomic,strong)NSString<Optional> *storeName;
@property(nonatomic,strong)NSString<Optional> *productId;
@property(nonatomic,strong)NSString<Optional> *selltype;
@property(nonatomic,strong)NSString<Optional> *orderSn;
@property(nonatomic,strong)NSNumber<Optional> *dr;
@property(nonatomic,strong)NSNumber<Optional> *goodsNumber;
@property(nonatomic,strong)NSString<Optional> *colorVal;
@property(nonatomic,strong)NSString<Optional> *ogid;
@property(nonatomic,strong)NSString<Optional> *imgUrl;
@property(nonatomic,strong)NSNumber<Optional> *salesPrice;
@property(nonatomic,strong)NSNumber<Optional> *salePrice;
@property(nonatomic,strong)NSString<Optional> *sizeId;
@property(nonatomic,strong)NSString<Optional> *productName;
@property(nonatomic,strong)NSString<Optional> *productSn;
@property(nonatomic,strong)NSString<Optional> *extensionCode;
@property(nonatomic,strong)NSString<Optional> *orderId;
@end
