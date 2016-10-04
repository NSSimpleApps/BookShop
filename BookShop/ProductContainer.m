//
//  ProductContainer.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductContainer.h"

@implementation ProductContainer

- (instancetype)init {
    
    return [self initWithName:@"" products:@[]];
}

- (instancetype)initWithName:(NSString *)name products:(NSArray<Product *> *)products {
    
    self = [super init];
    
    if (self) {
        
        self.name = name;
        _products = products;
    }
    
    return self;
}

@end
