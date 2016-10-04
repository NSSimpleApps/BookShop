//
//  ProgrammingBook.h
//  BookShop
//
//  Created by NSSimpleApps on 06.08.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

/// класс для представления книги по программированию
@interface ProgrammingBook : Book

@property (copy) NSString *programmingLanguage;

@end

NS_ASSUME_NONNULL_END