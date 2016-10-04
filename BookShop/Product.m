//
//  Product.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Product.h"

@implementation Product

- (instancetype)init {
    
    return [self initWithName:@""
                        price:0
                      barcode:@""];
}

- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                     barcode:(NSString *)barcode {
    
    self = [super init];
    
    if (self) {
        
        self.name = name;
        self.price = price;
        self.barcode = barcode;
    }
    return self;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@: name=%@, price=%@, barcode=%@",
            NSStringFromClass([self class]), self.name, @(self.price), self.barcode];
}

@end
