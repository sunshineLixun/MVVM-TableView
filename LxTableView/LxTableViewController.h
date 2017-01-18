//
//  LxTableViewController.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LxTableViewDataSource.h"
#import "LxBaseTableView.h"


@protocol LxTableViewControllerDelegate <NSObject>

@required
- (void)creatDataSource;

@end


@interface LxTableViewController : UIViewController<LxTableViewDelegate,LxTableViewControllerDelegate>

@property (nonatomic, strong) LxTableViewDataSource *dataSource;

@property (nonatomic, strong) LxBaseTableView *tableView;

@property (nonatomic, assign) UITableViewStyle tableViewStyle;

- (instancetype)initWithStyle:(UITableViewStyle )style;

@end
