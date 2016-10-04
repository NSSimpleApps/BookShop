//
//  Product.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// абстрактный класс для представления товара
@interface Product : NSObject

@property (copy) NSString *name;
@property (assign) NSInteger price;
@property (copy) NSString *barcode;

- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                     barcode:(NSString *)barcode NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
