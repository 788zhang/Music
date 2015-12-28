//
//  LTView.h
//  UI-LTView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTView : UIView<UITextFieldDelegate>
@property(nonatomic, retain) UILabel *lable;
@property(nonatomic, retain) UITextField *textField;

//-(LTView *)initWithLableViewName:(UILabel *)lable andTextViewName:(UITextField *)textFile;

@end
