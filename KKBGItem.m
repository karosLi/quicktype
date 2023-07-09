#import "KKBGItem.h"

NS_ASSUME_NONNULL_BEGIN

@implementation KKBGItem

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{
        @"itemID": @"item_id", 
        @"store": @"store", 
        @"info": @"info", 
    };
}

@end

@implementation KKInfo

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{
        @"animType": @"anim_type", 
        @"animURL": @"anim_url", 
    };
}

@end

@implementation KKStore

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{
        @"name": @"name", 
        @"thumbnail": @"thumbnail", 
        @"imgurl": @"imgurl", 
        @"desc": @"desc", 
        @"price": @"price", 
        @"discountStart": @"discount_start", 
        @"discountEnd": @"discount_end", 
    };
}

+ (NSDictionary *)modelContainerPropertyGenericClass
{
    return @{
        @"price": [KKPrice class],
    };
}

@end

@implementation KKPrice

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{
        @"identifier": @"id", 
        @"num": @"num", 
        @"discount": @"discount", 
    };
}

@end

NS_ASSUME_NONNULL_END
