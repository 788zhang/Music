//
//  BtnView.h
//  ArrCalculator
//
//  Created by scjy on 15/11/21.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BtnView : UIButton
@property(nonatomic, retain) UIButton *btn;
@property(nonatomic, retain) UILabel *lable;
@property(nonatomic, retain) NSMutableArray *arr;
@property(nonatomic, retain) NSMutableString *string;
@property(nonatomic, retain) NSString *str;
@property(nonatomic, assign) NSInteger num1,num2;
@end
