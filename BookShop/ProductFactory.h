//
//  ProductFactory.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Product;

/// преобразует json в массив товаров без какой-либо предобработки
@interface ProductFactory : NSObject

+ (NSArray<Product *> *)productsFromArray:(NSArray<NSDictionary *> *)array;

@end

NS_ASSUME_NONNULL_END