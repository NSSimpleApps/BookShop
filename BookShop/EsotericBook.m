//
//  EsotericBook.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "EsotericBook.h"

@implementation EsotericBook

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.minimalAge = 0;
    }
    return self;
}

- (NSString *)description {
    
    NSString *superDescription = super.description;
    
    return [superDescription stringByAppendingString:[NSString stringWithFormat:@", minimalAge=%@", @(self.minimalAge)]];
}

@end
