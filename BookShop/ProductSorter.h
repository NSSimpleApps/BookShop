//
//  ProductSorter.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ProductContainer, Product;

/// сортирует обычный массив товаров по категориям
@interface ProductSorter : NSObject

+ (NSArray<ProductContainer *> *)productContainersWithProducts:(NSArray<Product *> *)products;

@end

NS_ASSUME_NONNULL_END