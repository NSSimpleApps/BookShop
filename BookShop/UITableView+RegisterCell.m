//
//  UITableView+RegisterCell.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "UITableView+RegisterCell.h"

@implementation UITableView (RegisterCell)

- (void)registerCellForCellClass:(Class)cellClass {
    
    NSString *reuseIdentifier = NSStringFromClass(cellClass);
    
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    
    [self registerNib:nib forCellReuseIdentifier:reuseIdentifier];
}

@end
