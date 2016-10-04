//
//  Disc.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Disc.h"

@implementation Disc

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.contentType = DiscContentTypeNotSpecified;
    }
    return self;
}

- (NSString *)description {
    
    NSString *superDescription = super.description;
    
    return [superDescription stringByAppendingString:[NSString stringWithFormat:@", contentType=%@", @(self.contentType)]];
}

@end
