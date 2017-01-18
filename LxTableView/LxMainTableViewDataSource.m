//
//  LxMainTableViewDataSource.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxMainTableViewDataSource.h"

#import "LxTableViewSectionObject.h"
#import "LxTableViewBaseItem.h"
#import "LxMainTableViewCell.h"

@implementation LxMainTableViewDataSource


- (instancetype)init
{
    self = [super init];
    if (self) {
        LxTableViewSectionObject *sectionObject = [[LxTableViewSectionObject alloc] initWithItem:[NSMutableArray arrayWithObjects:
                                                                                                  [[LxTableViewBaseItem alloc] initWithName:@"1" subTitle:@"2"],
                                                                                                  [[LxTableViewBaseItem alloc] initWithName:@"2" subTitle:@"2"], nil]];
        self.sections = [NSMutableArray arrayWithObject:sectionObject];
        NSLog(@"%@",sectionObject.item);
    }
    return self;
}


- (Class )tableView:(UITableView *)tableView cellClassForObject:(LxTableViewBaseItem *)object
{
    return [LxMainTableViewCell class];
}


@end
