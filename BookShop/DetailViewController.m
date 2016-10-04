//
//  DetailViewController.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "DetailViewController.h"
#import "UITableView+RegisterCell.h"
#import "ProductInfoCell.h"
#import "ProductDetailedDescription.h"
#import "Product.h"

@interface DetailViewController ()

@property (strong) ProductDetailedDescription *detailedDescription;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.tableView registerCellForCellClass:[ProductInfoCell class]];
    
    self.detailedDescription = [[ProductDetailedDescription alloc] initWithProduct:self.product];
    
    self.title = self.product.name;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.detailedDescription.properties.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PropertyInfo *propertyInfo = self.detailedDescription.properties[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ProductInfoCell class])
                                                            forIndexPath:indexPath];
    cell.textLabel.text = propertyInfo.propertyName;
    cell.detailTextLabel.text = propertyInfo.propertyValue;
    
    return cell;
}

@end
