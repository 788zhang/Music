//
//  ResignViewController.m
//  delegate
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ResignViewController.h"
#define  kwidth  self.view.frame.size.width
#define kheight   self.view.frame.size.height
@interface ResignViewController ()
@property(nonatomic, retain) UITextField *textUser;
@property(nonatomic, retain) UITextField *textPassword;
@property(nonatomic, retain) UIButton *button;
@end

@implementation ResignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.textUser=[[UITextField alloc]initWithFrame:CGRectMake(30, 100, kwidth-60, 30)];
    
    self.textUser.borderStyle=UITextBorderStyleRoundedRect;
    self.textUser.backgroundColor=[UIColor redColor];
    self.textUser.textAlignment=NSTextAlignmentCenter;
    self.textUser.placeholder=@"请输入用户名";
    self.textUser.textColor=[UIColor blackColor];
    [self.view addSubview:self.textUser];

    
    //密码
    self.textPassword=[[UITextField alloc]initWithFrame:CGRectMake(30, 200, kwidth-60, 30)];
    self.textPassword.backgroundColor=[UIColor yellowColor];
    self.textPassword.textAlignment=NSTextAlignmentCenter;
    
    self.textPassword.borderStyle=UITextBorderStyleRoundedRect;
    self.textPassword.placeholder=@"请输入密码";
    [self.view addSubview:self.textPassword];
    

    
    self.button=[UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame=CGRectMake(30, 300, kwidth-60, 30);
    [self.button setTitle:@"返回" forState:UIControlStateNormal];
    
    self.button.backgroundColor=[UIColor blueColor];
    [self.button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];

    
    
    
    
    
    
}

//当我们返回的时候，我们要代理去做
-(void)back{
    
    
    if (self.delegate &&[self.delegate respondsToSelector:@selector(getTextFieldName:passWord:)]) {
        //当返回的时候，我们让代理执行的方法，并且给代理传递俩个参数
        [self.delegate getTextFieldName:self.textUser.text passWord:self.textPassword.text];
    }
   //导航视图返回方法，不需要制定返回到那，从哪来，回哪去
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.delegate makemoneyRule:@"抢银行"];
}


-(void)needmoney{
    
    [self.delegate makemoneyRule:@"抢银行"];
    
   
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
