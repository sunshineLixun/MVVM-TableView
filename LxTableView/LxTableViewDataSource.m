//
//  LxTableViewDataSource.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxTableViewDataSource.h"
#import "LxBaseTableViewCell.h"
#import "LxTableViewBaseItem.h"
#import "LxTableViewSectionObject.h"

#import <objc/runtime.h>

@implementation LxTableViewDataSource


- (LxTableViewBaseItem *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.sections.count > indexPath.section) {
        LxTableViewSectionObject *sectionObject = [self.sections objectAtIndex:indexPath.section];
        if (sectionObject.item.count > indexPath.row) {
            return sectionObject.item[indexPath.row];
        }
    }
    return nil;
}


- (Class )tableView:(UITableView *)tableView cellClassForObject:(LxTableViewBaseItem *)object
{
    return [LxBaseTableViewCell class];
}


- (void)appedItem:(LxTableViewBaseItem *)item
{
    LxTableViewSectionObject * sectionObject = self.sections[0];
    [sectionObject.item addObject:item];
}

#pragma mark tableViewDataSource

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.sections.count > section) {
        LxTableViewSectionObject *sectionObject = self.sections[section];
        return sectionObject.item.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LxTableViewBaseItem *object = [self tableView:tableView objectForRowAtIndexPath:indexPath];
    
    Class cellClass = [self tableView:tableView cellClassForObject:object];
    
    NSString *className = [NSString stringWithUTF8String:class_getName(cellClass)];
    
    LxBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:className];
    
    if (!cell) {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:className];
    }
    [cell setObject:object];
    return cell;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   return  self.sections ? self.sections.count : 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (self.sections.count > section) {
        LxTableViewSectionObject *sectionObject = self.sections[section];
        return sectionObject.footerTitle;
    }
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (self.sections.count > section) {
        LxTableViewSectionObject *sectionObject = self.sections[section];
        return sectionObject.headerTitle;
    }
    return nil;
}

@end
