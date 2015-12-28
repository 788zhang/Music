//
//  LTViewController.h
//  UI-LTView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
//添加协议
@interface LTViewController : UIViewController<UITextFieldDelegate>

//把lable和textField  定义成属性，在lable外部设置lable和textfield的文字和其他属性
@property(nonatomic, retain) UILabel *lable;
@property(nonatomic, retain) UITextField *textField;



@end
