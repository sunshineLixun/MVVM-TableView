//
//  LxTableViewDataSource.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LxTableViewBaseItem;

@protocol LxTableViewDataSource <UITableViewDataSource>

@optional

- (LxTableViewBaseItem *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;

- (Class )tableView:(UITableView *)tableView cellClassForObject:(LxTableViewBaseItem *)object;

@end



@interface LxTableViewDataSource : NSObject<LxTableViewDataSource>

@property (nonatomic, strong)NSMutableArray *sections;


- (void)appedItem:(LxTableViewBaseItem *)item;

@end
