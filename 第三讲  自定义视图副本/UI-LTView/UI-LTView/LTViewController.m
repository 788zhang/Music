//
//  LTViewController.m
//  UI-LTView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "LTViewController.h"
#import "LTView.h"
@interface LTViewController ()

@end

@implementation LTViewController

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    LTView *ltVc=[[LTView alloc]initWithFrame:CGRectMake(50, 100, 300, 40)];
    
    ltVc.lable.text=@"用户名";
    ltVc.textField.placeholder=@"快点输入，不输入，不让你登陆";
    ltVc.textField.delegate=self;
    [self.view addSubview:ltVc];
    [ltVc release];
    
    LTView *ltvc1=[[LTView alloc]initWithFrame:CGRectMake(50, 150, 300, 40)];
    
    ltvc1.lable.text=@"密码";
    ltvc1.textField.placeholder=@"快他妈给朕输密码";
    
    
    [self.view addSubview:ltvc1];
    
    [ltvc1 release];
    
    
    
    LTView *ltv2=[[LTView alloc]initWithFrame:CGRectMake(50, 220, 300, 40)];
    ltv2.textField.placeholder=@"请输入电话";
    ltv2.lable.text=@"电话";
    
    

    [self.view addSubview:ltv2];
    [ltv2 release];//切记放到最后，否则容易引发系统崩溃




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
