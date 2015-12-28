//
//  MainViewController.h
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, retain) NSArray *arrAllContentKey;
@end
