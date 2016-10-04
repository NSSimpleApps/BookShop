//
//  ProductSorter.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductSorter.h"
#import "ProductContainer.h"

@implementation ProductSorter

+ (NSArray<ProductContainer *> *)productContainersWithProducts:(NSArray<Product *> *)products {
    
    NSArray<NSString *> *classes = [products valueForKeyPath:@"@distinctUnionOfObjects.superclass.description"];
    classes = [classes sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
    
    NSMutableArray<ProductContainer *> *containers = [NSMutableArray arrayWithCapacity:classes.count];
    
    for (NSString *className in classes) {
        
        NSArray<Product *> *filteredProducts =
        [products filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"superclass.description = %@", className]];
        
        ProductContainer *productContainer =
        [[ProductContainer alloc] initWithName:className products:filteredProducts];
        
        [containers addObject:productContainer];
    }
    
    return containers;
}

@end
