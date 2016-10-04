//
//  ProductShortDescription.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductShortDescription.h"
#import "ProgrammingBook.h"
#import "CookeryBook.h"
#import "EsotericBook.h"
#import "CDDisc.h"
#import "DVDDisc.h"


@implementation ProductShortDescription

- (instancetype)initWithProduct:(Product *)product {
    
    self = [super init];
    
    if (self) {
        
        self.product = product;
    }
    
    return self;
}

- (void)setProduct:(Product *)product {
    
    _product = product;
    
    _productName = product.name;
    
    if ([product isKindOfClass:[ProgrammingBook class]]) {
        
        _productCategory = @"Programming Book";
        
    } else if ([product isKindOfClass:[CookeryBook class]]) {
        
        _productCategory = @"Cookery Book";
        
    } else if ([product isKindOfClass:[EsotericBook class]]) {
        
        _productCategory = @"Esoteric Book";
        
    } else if ([product isKindOfClass:[CDDisc class]]) {
        
        _productCategory = @"CD-disc";
        
    } else if ([product isKindOfClass:[DVDDisc class]]) {
        
        _productCategory = @"DVD-disc";
        
    } else {
        
        _productCategory = @"Not specified";
    }
}

@end
