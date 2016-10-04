//
//  UITableView+RegisterCell.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <UIKit/UIKit.h>

/// разширение для регистрации ячеек
@interface UITableView (RegisterCell)

- (void)registerCellForCellClass:(Class)cellClass;

@end
