//
//  LxTableViewController.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "LxTableViewController.h"

@interface LxTableViewController ()

@end

@implementation LxTableViewController

- (instancetype)initWithStyle:(UITableViewStyle )style
{
    if (self == [super init]) {
        [self creatDataSource];
    }
    return self;
}


- (void)creatDataSource
{
    @throw [NSException exceptionWithName:@"Cann't use this method"
                                   reason:@"You can only call this method in subclass"
                                 userInfo:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTableView];
}


- (void)createTableView
{
    if (!self.tableView) {
        self.tableView = [[LxBaseTableView alloc] initWithFrame:self.view.bounds style:self.tableViewStyle];
        self.tableView.lxDelegate = self;
        self.tableView.lxDataSource = self.dataSource;
        [self.view addSubview:self.tableView];
    }
    
}

@end
