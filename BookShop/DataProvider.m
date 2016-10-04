//
//  DataProvider.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "DataProvider.h"

@implementation DataProvider

- (void)jsonWithFileName:(NSString *)fileName
              completion:(void(^)(NSArray<NSDictionary *> *json))completionBlock
                   error:(nullable void(^)(NSError *error))errorBlock {
    
    NSURL *URL = [[NSBundle mainBundle] URLForResource:fileName withExtension:nil];
    
    NSData *data = [NSData dataWithContentsOfURL:URL];
    
    if ((data == nil) && (errorBlock != nil)) {
        
        NSString *localizedDescription = [NSString stringWithFormat:@"File %@ does not exist.", fileName];
        
        NSError *error = [NSError errorWithDomain:@"DOMAIN"
                                             code:999
                                         userInfo:@{NSLocalizedDescriptionKey: localizedDescription}];
        
        errorBlock(error);
        
    } else {
        
        NSError *error = nil;
        
        NSArray<NSDictionary *> *array =
        [NSJSONSerialization JSONObjectWithData:data
                                        options:NSJSONReadingMutableContainers
                                          error:&error];
        
        if ((error != nil) && (errorBlock != nil)) {
            
            errorBlock(error);
            
        } else if (completionBlock != nil) {
            
            completionBlock(array);
        }
    }
}


@end
