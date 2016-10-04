//
//  CookeryBook.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

/// класс для представления книги по кулинарии
@interface CookeryBook : Book

@property (copy) NSString * mainIngredient;

@end

NS_ASSUME_NONNULL_END