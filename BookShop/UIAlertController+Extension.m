//
//  UIAlertController+Extension.m
//  BookShop
//
//  Created by NSSimpleApps on 07.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "UIAlertController+Extension.h"

@implementation UIAlertController (Extension)

+ (instancetype)alertControllerWithTitle:(NSString *)title
                             cancelTitle:(NSString *)cancelTitle {
    
    UIAlertController *ac =
    [self alertControllerWithTitle:title
                           message:nil
                    preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelTitle
                                                           style:UIAlertActionStyleCancel handler:nil];
    
    [ac addAction:cancelAction];
    
    return ac;
}

@end
