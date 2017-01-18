//
//  LxTableViewSectionObject.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LxTableViewSectionObject : NSObject


@property (nonatomic, strong) NSString *headerTitle;

@property (nonatomic, strong) NSString *footerTitle;

@property (nonatomic, strong) NSMutableArray *item; //存baseItem

- (instancetype)initWithItem:(NSMutableArray *)item;

@end
