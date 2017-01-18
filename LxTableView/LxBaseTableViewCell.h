//
//  LxBaseTableViewCell.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LxTableViewBaseItem;

@interface LxBaseTableViewCell : UITableViewCell

@property (nonatomic, retain) id object;

+ (CGFloat )tableView:(UITableView *)tableView rowHeightForObject:(LxTableViewBaseItem *)object;

@end
