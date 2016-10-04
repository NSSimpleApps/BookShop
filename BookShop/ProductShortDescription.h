//
//  ProductShortDescription.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Product;

/// класс для представления краткой информации о товаре
@interface ProductShortDescription : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithProduct:(Product *)product NS_DESIGNATED_INITIALIZER;

@property (strong, nonatomic) Product *product;

@property (copy, readonly) NSString *productName;
@property (copy, readonly) NSString *productCategory;

@end

NS_ASSUME_NONNULL_END
