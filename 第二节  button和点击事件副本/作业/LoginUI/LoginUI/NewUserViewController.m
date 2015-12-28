//
//  NewUserViewController.m
//  LoginUI
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "NewUserViewController.h"
#import "ViewController.h"
@interface NewUserViewController ()

@end

@implementation NewUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UITextField *name = [[UITextField alloc]initWithFrame:CGRectMake(30, 50, 200, 100)];
    name.text = @"用户名:";
    name.font = [UIFont systemFontOfSize:18];
    
    UITextField *password = [[UITextField alloc]initWithFrame:CGRectMake(30, 110, 200, 100)];
    password.text = @"密   码:";
    password.font = [UIFont systemFontOfSize:18];
    
    UITextField *confirmPassword = [[UITextField alloc]initWithFrame:CGRectMake(30, 170, 200, 100)];
    confirmPassword.text = @"确认密码:";
    confirmPassword.font = [UIFont systemFontOfSize:18];
    
    UITextField *phoneNumber = [[UITextField alloc]initWithFrame:CGRectMake(30, 230, 200, 100)];
    phoneNumber.text = @"手机号:";
    phoneNumber.font = [UIFont systemFontOfSize:18];
    
    UITextField *email = [[UITextField alloc]initWithFrame:CGRectMake(30, 280, 200, 100)];
    email.text = @"邮箱:";
    email.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:name];
    [self.view addSubview:password];
    [self.view addSubview:confirmPassword];
    [self.view addSubview:phoneNumber];
    [self.view addSubview:email];
    
    //文本框
    UITextField *nameKuang = [[UITextField alloc]initWithFrame:CGRectMake(130, 80, 200, 30 )];
    nameKuang.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    //文本框样式
    nameKuang.borderStyle = UITextBorderStyleRoundedRect;
    //占用符
    nameKuang.placeholder = @"请输入用户名";
    
    UITextField *passKuang = [[UITextField alloc]initWithFrame:CGRectMake(130, 140, 200, 30)];
    passKuang.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    passKuang.borderStyle = UITextBorderStyleRoundedRect;
    //占用符
    passKuang.placeholder = @"请输入密码";
    UITextField *comfimPassKuang = [[UITextField alloc]initWithFrame:CGRectMake(130, 200, 200, 30)];
    comfimPassKuang.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    comfimPassKuang.borderStyle = UITextBorderStyleRoundedRect;
    //占用符
    comfimPassKuang.placeholder = @"再次输入密码";
    UITextField *phoneNumKuang = [[UITextField alloc]initWithFrame:CGRectMake(130, 260, 200, 30)];
    phoneNumKuang.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    phoneNumKuang.borderStyle = UITextBorderStyleRoundedRect;
    //占用符
    phoneNumKuang.placeholder = @"请输入联系方式";
    UITextField *emailKuang = [[UITextField alloc]initWithFrame:CGRectMake(130, 320, 200, 30)];
    emailKuang.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    emailKuang.borderStyle = UITextBorderStyleRoundedRect;
    //占用符
    emailKuang.placeholder = @"请输入邮箱";
    [self.view addSubview:emailKuang];
    [self.view addSubview:phoneNumKuang];
    [self.view addSubview:comfimPassKuang];
    [self.view addSubview:passKuang];
    [self.view addSubview:nameKuang];
    
    UIButton *resgisZhu = [UIButton buttonWithType:UIButtonTypeCustom];
    resgisZhu.frame = CGRectMake(90, 380, 50, 50);
    [resgisZhu setTitle:@"返回" forState:UIControlStateNormal];
    
    [resgisZhu addTarget:self action:@selector(backMainView:) forControlEvents:UIControlEventTouchUpInside];
    
    [resgisZhu setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    UIButton *cancelXiao = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelXiao.frame = CGRectMake(260, 380, 50, 50);
    [cancelXiao setTitle:@"注册" forState:UIControlStateNormal];
    [cancelXiao setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:cancelXiao];
    [self.view addSubview:resgisZhu];
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}


-(void)backMainView:(UIButton *)btn{
    
    ViewController *newview=[[ViewController alloc]init];
    [self presentViewController:newview animated:YES completion:nil];
    
    
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
