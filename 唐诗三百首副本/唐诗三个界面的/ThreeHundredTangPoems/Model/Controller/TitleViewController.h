//
//  TitleViewController.h
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, retain) NSString *sectionKey;
@property(nonatomic, retain) NSArray *arrAllContentKey;
@end
