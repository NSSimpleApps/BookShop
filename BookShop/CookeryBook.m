//
//  CookeryBook.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "CookeryBook.h"

@implementation CookeryBook

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.mainIngredient = @"Not specified";
    }
    return self;
}

- (NSString *)description {
    
    NSString *superDescription = super.description;
    
    return [superDescription stringByAppendingString:[NSString stringWithFormat:@", mainIngredient=%@", self.mainIngredient]];
}

@end
