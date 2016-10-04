//
//  ProductDetailedDescription.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductDetailedDescription.h"
#import "ProgrammingBook.h"
#import "CookeryBook.h"
#import "EsotericBook.h"
#import "CDDisc.h"
#import "DVDDisc.h"

@implementation PropertyInfo

- (instancetype)initWithPropertyName:(NSString *)propertyName propertyValue:(NSString *)propertyValue {
    
    self = [super init];
    
    if (self) {
        
        self.propertyName = propertyName;
        self.propertyValue = propertyValue;
    }
    
    return self;
}

@end

@implementation ProductDetailedDescription

- (instancetype)initWithProduct:(Product *)product {
    
    self = [super init];
    
    if (self) {
        
        self.product = product;
    }
    
    return self;
}

- (void)setProduct:(Product *)product {
    
    _product = product;
    
    NSMutableArray<PropertyInfo *> *properties = [NSMutableArray array];
    
    [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Name" propertyValue:product.name]];
    [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Price" propertyValue:@(product.price).stringValue]];
    [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Barcode" propertyValue:product.barcode]];
    
    if ([product isKindOfClass:[Book class]]) {
        
        NSString *numberOfPages = @(((Book *)product).numberOfPages).stringValue;
        
        [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Number of pages" propertyValue:numberOfPages]];
        
        if ([product isKindOfClass:[ProgrammingBook class]]) {
            
            NSString *programmingLanguage = ((ProgrammingBook *)product).programmingLanguage;
            
            [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Programming language" propertyValue:programmingLanguage]];
            
        } else if ([product isKindOfClass:[CookeryBook class]]) {
            
            NSString *mainIngredient = ((CookeryBook *)product).mainIngredient;
            
            [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Main ingredient" propertyValue:mainIngredient]];
            
        } else if ([product isKindOfClass:[EsotericBook class]]) {
            
            NSString *minimalAge = @(((EsotericBook *)product).minimalAge).stringValue;
            
            [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Minimal age" propertyValue:minimalAge]];
        }
        
    } else if ([product isKindOfClass:[Disc class]]) {
        
        DiscContentType contentType = ((Disc *)product).contentType;
        
        NSString *contentDescription = @"";
        
        switch (contentType) {
            case DiscContentTypeMusic:
                contentDescription = @"Music";
            break;
            case DiscContentTypeVideo:
                contentDescription = @"Video";
            break;
            case DiscContentTypeSoftware:
                contentDescription = @"Software";
            break;
            default:
                contentDescription = @"Not specified";
            break;
        }
        
        [properties addObject:[[PropertyInfo alloc] initWithPropertyName:@"Content type" propertyValue:contentDescription]];
    }
    
    _properties = properties;
}

@end
