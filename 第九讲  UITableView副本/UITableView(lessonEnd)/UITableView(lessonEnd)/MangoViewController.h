//
//  MangoViewController.h
//  UITableView(lessonEnd)
//
//  Created by scjy on 15/11/30.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShowViewController.h"

@interface MangoViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>

@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSMutableArray *allGroupArr;
@property(nonatomic, retain) NSMutableArray *allTelArr;
@property(nonatomic, retain) NSMutableArray *pic;


@end
