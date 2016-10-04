//
//  ProductContainer.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Product;

/// контейнер для держания имени категории и массива товаров
@interface ProductContainer : NSObject

- (instancetype)initWithName:(NSString *)name products:(NSArray<Product *> *)products NS_DESIGNATED_INITIALIZER;

@property (copy) NSString *name;
@property (strong, readonly) NSArray<Product *> *products;

@end

NS_ASSUME_NONNULL_END
