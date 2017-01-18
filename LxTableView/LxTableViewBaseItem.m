//
//  LxTableViewBaseItem.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxTableViewBaseItem.h"

CGFloat const CellHeight = 0;

@implementation LxTableViewBaseItem

- (instancetype)init
{
    self = [self initWithName:nil subTitle:nil];
    return self;
}

- (instancetype)initWithName:(NSString *)name subTitle:(NSString *)subTitle
{
    if (self == [super init]) {
        _cellHeight = CellHeight;
        _name = name;
        _subTitle = subTitle;
    }return self;
}

@end
