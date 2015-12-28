//
//  MainViewController.m
//  delegate
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MainViewController.h"
//#import "ResignViewController.h"在。h中已经声明，再次不需要了
#define  kwidth  self.view.frame.size.width
#define kheight   self.view.frame.size.height
@interface MainViewController ()
@property(nonatomic, retain) UITextField *textUser;
@property(nonatomic, retain) UITextField *textPassword;
@property(nonatomic, retain) UIButton *button;
@end

@implementation MainViewController

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
    [self.button setTitle:@"注册" forState:UIControlStateNormal];
   
    self.button.backgroundColor=[UIColor blueColor];
    [self.button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    
}


-(void)getTextFieldName:(NSString *)name passWord:(NSString *)password{
    
    self.textUser.text=name;
    self.textPassword.text=password;
    
    
    
}

-(void)makemoneyRule:(NSString *)job{
    
    NSLog(@"老婆，我%@，给你抢了好多钱",job);
    
}



-(void)back{
    
    ResignViewController *resignVC=[[ResignViewController alloc]init];
    //第四步：
    //设置代理对象
    //把loginVC当做resignVC的代理对象
    resignVC.delegate=self;
    
    [self.navigationController pushViewController:resignVC animated:YES];
    
    
//    [self presentViewController:resign animated:YES completion:nil];
    
    
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
