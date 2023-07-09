#import <Foundation/Foundation.h>

@class KKBGItem;
@class KKInfo;
@class KKStore;
@class KKPrice;

NS_ASSUME_NONNULL_BEGIN

@interface KKBGItem : NSObject
@property (nonatomic, assign) NSInteger itemID;
@property (nonatomic, strong) KKStore *store;
@property (nonatomic, strong) KKInfo *info;
@end

@interface KKInfo : NSObject
@property (nonatomic, assign) NSInteger animType;
@property (nonatomic, copy)   NSString *animURL;
@end

@interface KKStore : NSObject
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *thumbnail;
@property (nonatomic, copy)   NSString *imgurl;
@property (nonatomic, copy)   NSString *desc;
@property (nonatomic, copy)   NSArray<KKPrice *> *price;
@property (nonatomic, assign) NSInteger discountStart;
@property (nonatomic, assign) NSInteger discountEnd;
@end

@interface KKPrice : NSObject
@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger discount;
@end

NS_ASSUME_NONNULL_END
