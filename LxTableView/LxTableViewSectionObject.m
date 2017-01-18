//
//  LxTableViewSectionObject.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxTableViewSectionObject.h"

@implementation LxTableViewSectionObject


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headerTitle = @"";
        self.footerTitle = @"";
        self.item = [[NSMutableArray alloc] init];
    }
    return self;
}


- (instancetype)initWithItem:(NSMutableArray *)item
{
    if (self == [self init]) {
        [self.item addObjectsFromArray:item];
    }
    return self;
}
@end
