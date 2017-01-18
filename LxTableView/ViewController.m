//
//  ViewController.m
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import "ViewController.h"

#import "LxMainTableViewDataSource.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)creatDataSource
{
    self.dataSource = [[LxMainTableViewDataSource alloc] init];
}


@end
