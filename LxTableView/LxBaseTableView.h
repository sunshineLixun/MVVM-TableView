//
//  LxBaseTableView.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LxTableViewDataSource.h"

@protocol LxTableViewDelegate <UITableViewDelegate>

@optional

- (void)didSelectedObject:(id)object atIndexPath:(NSIndexPath *)indexPath;


@end


@interface LxBaseTableView : UITableView<UITableViewDelegate>

@property (nonatomic, assign) id<LxTableViewDataSource> lxDataSource;
@property(nonatomic, assign) id<LxTableViewDelegate>  lxDelegate;


@end
