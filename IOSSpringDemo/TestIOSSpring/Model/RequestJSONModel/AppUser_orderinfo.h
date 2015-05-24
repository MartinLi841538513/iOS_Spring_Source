#import "Status.h"#import "PageInfo.h"#import "OrderStatus.h"#import "Order.h"@interface AppUser_orderinfoData : JSONModel
@property(nonatomic,strong)NSString<Optional> *noSendOrderNum;
@property(nonatomic,strong)NSNumber<Optional> *orderNumber;
@property(nonatomic,strong)PageInfo<Optional> *pageInfo;
@property(nonatomic,strong)NSString<Optional> *cancelOrderNum;
@property(nonatomic,strong)NSString<Optional> *overOrderNum;
@property(nonatomic,strong)NSString<Optional> *sendedOrderNum;
@property(nonatomic,strong)NSArray<OrderStatus,Optional> *orderStatusList;
@property(nonatomic,strong)NSString<Optional> *noConfirmNum;
@property(nonatomic,strong)NSArray<Order,Optional> *orderList;
@property(nonatomic,strong)NSString<Optional> *noPayOrderNum;
@end
@interface AppUser_orderinfo : Status
@property(nonatomic,strong)AppUser_orderinfoData<Optional> *data;
@end
