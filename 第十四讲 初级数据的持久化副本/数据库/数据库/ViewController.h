//
//  ViewController.h
//  数据库
//
//  Created by scjy on 15/12/8.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
@interface ViewController : UIViewController
{
    sqlite3 *db;
}

@end

