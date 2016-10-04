//
//  ProgrammingBook.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProgrammingBook.h"

@implementation ProgrammingBook

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.programmingLanguage = @"Not specified";
    }
    return self;
}

- (NSString *)description {
    
    NSString *superDescription = super.description;
    
    return [superDescription stringByAppendingString:[NSString stringWithFormat:@", programmingLanguage=%@", self.programmingLanguage]];
}

@end
