//
//  ResignViewController.h
//  delegate
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义一个协议
@protocol ResignDelegate <NSObject>
//协议里的方法
@required

//相当于结婚协议的makemoney
//获取输入框的姓名和密码
-(void)getTextFieldName:(NSString *)name passWord:(NSString *)password;

-(void)makemoneyRule:(NSString *)job;

@optional



@end

@interface ResignViewController : UIViewController


//定义协议属性
//delegate  相当于girlfriend
@property(nonatomic, assign) id<ResignDelegate>delegate;


@end
