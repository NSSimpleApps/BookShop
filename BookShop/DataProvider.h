//
//  DataProvider.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// считывает файл и преобразует его в json
@interface DataProvider : NSObject

- (void)jsonWithFileName:(NSString *)fileName
              completion:(void(^)(NSArray<NSDictionary *> *json))completionBlock
                   error:(nullable void(^)(NSError *error))errorBlock;

@end

NS_ASSUME_NONNULL_END