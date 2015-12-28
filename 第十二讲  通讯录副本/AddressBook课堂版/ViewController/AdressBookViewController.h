//
//  AdressBookViewController.h
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdressBookViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, retain) NSMutableArray allCarArray
@end
