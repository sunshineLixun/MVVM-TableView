//
//  LxTableViewBaseItem.h
//  LxTableView
//
//  Created by lixun on 2016/11/20.
//  Copyright © 2016年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

UIKIT_EXTERN CGFloat const CellHeight;


@interface LxTableViewBaseItem : NSObject


@property(nonatomic, assign) CGFloat cellHeight;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *subTitle;

- (instancetype)initWithName:(NSString *)name subTitle:(NSString *)subTitle;

@end
