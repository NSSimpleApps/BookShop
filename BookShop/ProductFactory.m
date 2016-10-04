//
//  ProductFactory.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductFactory.h"
#import "ProgrammingBook.h"
#import "CookeryBook.h"
#import "EsotericBook.h"

#import "CDDisc.h"
#import "DVDDisc.h"

#import "NSKMapper.h"

static NSString *CategoryKey = @"category";
static NSString *NameKey = @"name";
static NSString *PriceKey = @"price";
static NSString *BarcodeKey = @"barcode";

static NSString *NumberOfPagesKey = @"number_of_pages";
static NSString *ProgrammingLanguageKey = @"programming_language";
static NSString *MainIngredientKey = @"main_ingredient";
static NSString *MinimalAgeKey = @"minimal_age";

static NSString *ContentKey = @"content";


@implementation ProductFactory

+ (NSKMapper *)mapper {
    
    NSSet<NSString *> *productKeys =
    [NSSet setWithObjects:CategoryKey, NameKey, PriceKey, BarcodeKey, nil];
    
    NSSet<NSString *> *bookKeys =
    [productKeys setByAddingObject:NumberOfPagesKey];
    
    NSSet<NSString *> *programmingBookKeys =
    [bookKeys setByAddingObject:ProgrammingLanguageKey];
    
    NSSet<NSString *> *esotericBookKeys =
    [bookKeys setByAddingObject:MinimalAgeKey];
    
    NSSet<NSString *> *discKeys =
    [productKeys setByAddingObject:ContentKey];
    
    NSKMapper *mapper = [NSKMapper new];
    [mapper objectForDictionary:^id _Nullable(NSKDictionary * _Nonnull dictionary) {
        
        NSSet<NSString *> *keys = [NSSet setWithArray:dictionary.allKeys];
        
        if ([keys isEqualToSet:programmingBookKeys]) {
            
            return [ProgrammingBook new];
            
        } else if ([keys isEqualToSet:esotericBookKeys]) {
            
            return [EsotericBook new];
            
        } else if ([keys isEqualToSet:discKeys]) {
            
            NSString *category = dictionary[CategoryKey];
            
            if (category) {
                
                if ([category isEqualToString:@"CD"]) {
                    
                    return [CDDisc new];
                    
                } else if ([category isEqualToString:@"DVD"]) {
                    
                    return [DVDDisc new];
                }
            }
        }
        
        return nil;
    }];
    
    [mapper setStringRule:^(Product *_Nonnull product, NSString * _Nonnull name) {
        
        product.name = name;
        
    }
                   forKey:NameKey];
    [mapper setNumberRule:^(Product *_Nonnull product, NSNumber * _Nonnull price) {
        
        product.price = price.integerValue;
        
    }
                   forKey:PriceKey];
    [mapper setStringRule:^(Product *_Nonnull product, NSString * _Nonnull barcode) {
        
        product.barcode = barcode;
        
    }
                   forKey:BarcodeKey];
    [mapper setNumberRule:^(Book *_Nonnull book, NSNumber * _Nonnull numberOfPages) {
        
        book.numberOfPages = numberOfPages.integerValue;
        
    }
                   forKey:NumberOfPagesKey];
    [mapper setStringRule:^(ProgrammingBook *_Nonnull programmingBook, NSString * _Nonnull programmingLanguage) {
        
        programmingBook.programmingLanguage = programmingLanguage;
        
    }
                   forKey:ProgrammingLanguageKey];
    [mapper setStringRule:^(CookeryBook *_Nonnull cookeryBook, NSString * _Nonnull mainIngredient) {
        
        cookeryBook.mainIngredient = mainIngredient;
        
    }
                   forKey:MainIngredientKey];
    [mapper setNumberRule:^(EsotericBook *_Nonnull esotericBook, NSNumber * _Nonnull minimalAge) {
        
        esotericBook.minimalAge = minimalAge.integerValue;
        
    }
                   forKey:MinimalAgeKey];
    
    [mapper setStringRule:^(Disc *_Nonnull disc, NSString * _Nonnull content) {
        
        if ([content isEqualToString:@"music"]) {
            
            disc.contentType = DiscContentTypeMusic;
            
        } else if ([content isEqualToString:@"video"]) {
            
            disc.contentType = DiscContentTypeVideo;
            
        } else if ([content isEqualToString:@"software"]) {
            
            disc.contentType = DiscContentTypeSoftware;
        }
    }
                   forKey:ContentKey];
    
    return mapper;
}

+ (NSArray<Product *> *)productsFromArray:(NSArray<NSDictionary *> *)array {
    
    NSMutableArray<Product *> *products = [NSMutableArray arrayWithCapacity:array.count];
    
    for (NSDictionary *d in array) {
        
        NSKMapper *mapper = self.mapper;
        
        NSError *error;
        
        Product *product =
        [mapper buildObjectFromDictionary:d
                                    error:&error];
        
        if (error) {
            
            NSLog(@"error = %@", error);
            
            continue;
            
        } else {
            
            [products addObject:product];
        }
    }
    
    return [NSArray arrayWithArray:products];
}

@end
