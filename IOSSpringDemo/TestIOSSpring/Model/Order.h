#import "JSONModel.h"
#import "Ordergood.h"@protocol Order <NSObject>
@end
@interface Order : JSONModel
@property(nonatomic,strong)NSString<Optional> *ctime;
@property(nonatomic,strong)NSString<Optional> *deliveryId;
@property(nonatomic,strong)NSString<Optional> *orderId;
@property(nonatomic,strong)NSString<Optional> *printstate;
@property(nonatomic,strong)NSNumber<Optional> *invoiceType;
@property(nonatomic,strong)NSString<Optional> *failDesc;
@property(nonatomic,strong)NSNumber<Optional> *promotesmoney;
@property(nonatomic,strong)NSString<Optional> *storeId;
@property(nonatomic,strong)NSString<Optional> *payTime;
@property(nonatomic,strong)NSNumber<Optional> *payFee;
@property(nonatomic,strong)NSString<Optional> *payId;
@property(nonatomic,strong)NSNumber<Optional> *shippingFee;
@property(nonatomic,strong)NSString<Optional> *utime;
@property(nonatomic,strong)NSNumber<Optional> *goodsAmount;
@property(nonatomic,strong)NSString<Optional> *changeCode;
@property(nonatomic,strong)NSString<Optional> *orderStatus;
@property(nonatomic,strong)NSArray<Ordergood,Optional> *ordergoods;
@property(nonatomic,strong)NSString<Optional> *payNote;
@property(nonatomic,strong)NSString<Optional> *modifytime;
@property(nonatomic,strong)NSString<Optional> *toBuyer;
@property(nonatomic,strong)NSNumber<Optional> *balancePaid;
@property(nonatomic,strong)NSString<Optional> *maketime;
@property(nonatomic,strong)NSString<Optional> *productType;
@property(nonatomic,strong)NSString<Optional> *deliveryNote;
@property(nonatomic,strong)NSNumber<Optional> *dr;
@property(nonatomic,strong)NSString<Optional> *deliveryStore;
@property(nonatomic,strong)NSNumber<Optional> *invoiceFee;
@property(nonatomic,strong)NSString<Optional> *orderSn;
@property(nonatomic,strong)NSString<Optional> *confirmTime;
@property(nonatomic,strong)NSString<Optional> *isCanComment;
@property(nonatomic,strong)NSNumber<Optional> *discountAmount;
@property(nonatomic,strong)NSString<Optional> *invoiceTitle;
@property(nonatomic,strong)NSString<Optional> *payStatus;
@property(nonatomic,strong)NSString<Optional> *invoiceContent;
@property(nonatomic,strong)NSString<Optional> *extensionCode;
@property(nonatomic,strong)NSString<Optional> *addressId;
@property(nonatomic,strong)NSString<Optional> *tradeNo;
@property(nonatomic,strong)NSString<Optional> *userId;
@end
