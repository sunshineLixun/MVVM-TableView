//
//  LxBaseTableViewCell.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxBaseTableViewCell.h"
#import "LxTableViewBaseItem.h"

@implementation LxBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setObject:(LxTableViewBaseItem *)object
{
    self.textLabel.text = object.name;
    self.detailTextLabel.text = object.subTitle;
}

+ (CGFloat )tableView:(UITableView *)tableView rowHeightForObject:(LxTableViewBaseItem *)object;
{
    return 44.f;
}

@end
