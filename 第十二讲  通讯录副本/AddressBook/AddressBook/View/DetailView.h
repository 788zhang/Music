//
//  DetailView.h
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdressBookDateModel.h"
@interface DetailView : UIView
@property(nonatomic, retain) AdressBookDateModel *model;
@property(nonatomic, retain) UILabel *NameLabel;
@end
