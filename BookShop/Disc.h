//
//  Disc.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Product.h"

typedef NS_ENUM(NSInteger, DiscContentType) {
    DiscContentTypeNotSpecified = -1,
    DiscContentTypeMusic = 0,
    DiscContentTypeVideo = 1,
    DiscContentTypeSoftware = 2
};

NS_ASSUME_NONNULL_BEGIN

/// абстрактный класс для представления диска
@interface Disc : Product

@property (assign) DiscContentType contentType;

@end

NS_ASSUME_NONNULL_END