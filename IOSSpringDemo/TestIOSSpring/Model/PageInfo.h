#import "JSONModel.h"
#import "ParamMap.h"@protocol PageInfo <NSObject>
@end
@interface PageInfo : JSONModel
@property(nonatomic,strong)NSNumber<Optional> *pageSize;
@property(nonatomic,strong)ParamMap<Optional> *paramMap;
@property(nonatomic,strong)NSNumber<Optional> *startIndex;
@property(nonatomic,strong)NSString<Optional> *url;
@property(nonatomic,strong)NSNumber<Optional> *count;
@property(nonatomic,strong)NSNumber<Optional> *nextPage;
@property(nonatomic,strong)NSNumber<Optional> *prePage;
@property(nonatomic,strong)NSNumber<Optional> *pageNum;
@end
