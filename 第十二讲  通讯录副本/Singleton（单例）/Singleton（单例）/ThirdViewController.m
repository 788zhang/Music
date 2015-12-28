//
//  ThirdViewController.m
//  Singleton（单例）
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ThirdViewController.h"
#import "MangoSingleton.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"第三页";
    self.view.backgroundColor=[UIColor blueColor];
    
    UIBarButtonItem *barbtn1=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(dismissVC)];
    
    self.navigationItem.rightBarButtonItem=barbtn1;

    
    
    self.textfield=[[UITextField alloc]initWithFrame:CGRectMake(30, self.view.frame.size.height/3, self.view.frame.size.width-60, 44)];
    
    self.textfield.borderStyle=UITextBorderStyleRoundedRect;
    self.textfield.placeholder=@"请输入";
    self.textfield.textAlignment=NSTextAlignmentCenter;
    self.textfield.textColor=[UIColor blackColor];
    [self.view addSubview:self.textfield];
    
    
    MangoSingleton *mango=[MangoSingleton sharedInstance];
    
    self.title=mango.inputText;

    
    
    
    
    
}
-(void)dismissVC{
    
       [self dismissViewControllerAnimated:YES completion:nil];
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
