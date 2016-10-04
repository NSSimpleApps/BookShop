//
//  ProductDetailedDescription.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Product;

/// класс для представления подробной информации о товаре
@interface PropertyInfo : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithPropertyName:(NSString *)propertyName propertyValue:(NSString *)propertyValue NS_DESIGNATED_INITIALIZER;

@property (copy) NSString *propertyName;
@property (copy) NSString *propertyValue;

@end

@interface ProductDetailedDescription : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithProduct:(Product *)product NS_DESIGNATED_INITIALIZER;

@property (strong, nonatomic) Product *product;

@property (strong, readonly) NSArray<PropertyInfo *> *properties;

@end

NS_ASSUME_NONNULL_END
