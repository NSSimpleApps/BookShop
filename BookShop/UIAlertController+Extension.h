//
//  UIAlertController+Extension.h
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// разширение для показа простого UIAlertController
@interface UIAlertController (Extension)

+ (instancetype)alertControllerWithTitle:(NSString *)title
                             cancelTitle:(NSString *)cancelTitle;

@end

NS_ASSUME_NONNULL_END
