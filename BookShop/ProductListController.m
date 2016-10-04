//
//  ProductListController.m
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ProductListController.h"
#import "UITableView+RegisterCell.h"
#import "ProductCell.h"
#import "DataProvider.h"
#import "UIAlertController+Extension.h"
#import "ProductFactory.h"
#import "ProductShortDescription.h"
#import "ProductSorter.h"
#import "ProductContainer.h"

#import "DetailViewController.h"

@interface ProductListController ()

@property (strong) NSArray<ProductContainer *> *containers;

@end

@implementation ProductListController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.tableView registerCellForCellClass:[ProductCell class]];
    
    DataProvider *dataProvider = [DataProvider new];
    [dataProvider jsonWithFileName:@"data.json"
                        completion:^(NSArray<NSDictionary *> * _Nonnull json) {
                            
                            NSArray<Product *> *products = [ProductFactory productsFromArray:json];
                            
                            self.containers = [ProductSorter productContainersWithProducts:products];
                            [self.tableView reloadData];
                        }
                             error:^(NSError * _Nonnull error) {
                                 
                                 UIAlertController *alertController =
                                 [UIAlertController alertControllerWithTitle:error.localizedDescription cancelTitle:@"Close"];
                                 
                                 [self presentViewController:alertController
                                                    animated:YES
                                                  completion:nil];
                             }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.containers.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.containers[section].products.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ProductCell class])
                                    forIndexPath:indexPath];
    
    Product *product = self.containers[indexPath.section].products[indexPath.row];
    
    ProductShortDescription *viewModel = [[ProductShortDescription alloc] initWithProduct:product];
    
    cell.textLabel.text = viewModel.productName;
    cell.detailTextLabel.text = viewModel.productCategory;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return self.containers[section].name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"ShowDetailSegue"
                              sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ShowDetailSegue"]) {
        
        NSIndexPath *indexPath = sender;
        
        DetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.product = self.containers[indexPath.section].products[indexPath.row];
    }
}

@end
