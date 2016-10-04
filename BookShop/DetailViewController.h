//
//  DetailViewController.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Product;

/// контроллер для отображения подробной информации о товаре
@interface DetailViewController : UITableViewController

@property (strong) Product *product;

@end

NS_ASSUME_NONNULL_END