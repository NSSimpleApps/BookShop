//
//  Book.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Product.h"

NS_ASSUME_NONNULL_BEGIN

/// абстрактный класс для представления книги
@interface Book : Product

@property (assign) NSInteger numberOfPages;

@end

NS_ASSUME_NONNULL_END