//
//  LxBaseTableView.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxBaseTableView.h"
#import "LxTableViewBaseItem.h"
#import "LxBaseTableViewCell.h"

@implementation LxBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    if (self == [super initWithFrame:frame style:style]) {
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleWidth;
        self.delegate = self;
        self.separatorInset = UIEdgeInsetsZero;
        self.tableFooterView = [UIView new];
        self.sectionHeaderHeight = 0.0f;
        self.sectionFooterHeight = 0.0f;
    }
    return self;
}


- (void)setLxDataSource:(id<LxTableViewDataSource>)lxDataSource
{
    if (_lxDataSource != lxDataSource) {
        _lxDataSource = lxDataSource;
        self.dataSource = lxDataSource;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.lxDelegate && [self.lxDelegate respondsToSelector:@selector(didSelectedObject:atIndexPath:)]) {
        id<LxTableViewDataSource> dataSource = (id<LxTableViewDataSource>)self.dataSource;
        id object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
        [self.lxDelegate didSelectedObject:object atIndexPath:indexPath];
    }else if (self.lxDelegate && [self.lxDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]){
        [self.lxDelegate tableView:tableView didSelectRowAtIndexPath:indexPath];
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<LxTableViewDataSource> dataSource = (id<LxTableViewDataSource>)self.dataSource;
    LxTableViewBaseItem *object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    Class cls = [dataSource tableView:tableView cellClassForObject:object];
    
    if (object.cellHeight == CellHeight) {
       object.cellHeight = [cls tableView:tableView rowHeightForObject:object];
    }
    return object.cellHeight;
}

@end
