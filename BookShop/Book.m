//
//  Book.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.numberOfPages = 0;
    }
    return self;
}

- (NSString *)description {
    
    NSString *superDescription = super.description;
    
    return [superDescription stringByAppendingString:[NSString stringWithFormat:@", numberOfPages=%@", @(self.numberOfPages)]];
}

@end
