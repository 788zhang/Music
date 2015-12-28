//
//  ViewController.m
//  LoginUI
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "LookforViewController.h"
#import "NewUserViewController.h"
@interface ViewController ()
@property(nonatomic, retain) UILabel *lableuser;
@property(nonatomic, retain) UILabel *lablepassword;
@property(nonatomic, retain) UITextField *textFiledUser;
@property(nonatomic, retain) UITextField *textFilePassword;
@property(nonatomic, retain) UIButton *logbtn;
@property(nonatomic, retain) UIButton *forgetpassword;
@property(nonatomic, retain) UIButton *RegisterUser;


@end

@implementation ViewController
- (void)loadView{
    
    [super loadView];
    
   
    
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.textFiledUser resignFirstResponder];
    [self.textFilePassword resignFirstResponder];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    [self addUIlableUser];
    [self addUIlablePassword];
    [self addtextFiedUser];
    [self addTextFiledPassword];
    [self addloginbtn];
    [self addForgetpassword];
    [self addRegisterUser];
    
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

- (void)addloginbtn{
    
    _logbtn=[UIButton buttonWithType:UIButtonTypeSystem];
    
    
    _logbtn.frame=CGRectMake(150, 300, 120, 30);
    [_logbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_logbtn setBackgroundColor:[UIColor blueColor]];
    [_logbtn setTitle:@"登陆" forState:UIControlStateNormal];
   
    [_logbtn addTarget:self action:@selector(loginbtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: _logbtn];
    
    
}

- (void)loginbtn:(UIButton *)btn{
    
    if ([_textFiledUser.text isEqualToString:@"850944623"]&&[_textFilePassword.text isEqualToString:@"123"]) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"对不起，由于网路故障，无法连接服务器" delegate:self cancelButtonTitle:@"退出" otherButtonTitles:@"检查网路",nil];
        [alert show];
    }
    else
    {
        UIAlertView *alertfaile=[[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名或者密码错误，请核对后再试" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
   
    
        [alertfaile show];
     
}

}

- (void)addUIlableUser{
    _lableuser=[[UILabel alloc]initWithFrame:CGRectMake(50, 150, 60, 30)];
    _lableuser.text=@"用户 ：";
    _lableuser.textColor=[UIColor blackColor];
    _lableuser.textAlignment=NSTextAlignmentCenter;
    _lableuser.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_lableuser];
    
    
}

- (void)addtextFiedUser{
    _textFiledUser=[[UITextField alloc]initWithFrame:CGRectMake(130, 150, 220, 30)];
    _textFiledUser.backgroundColor=[UIColor whiteColor];
    
    _textFiledUser.borderStyle=UITextBorderStyleRoundedRect;
    _textFiledUser.placeholder=@"请输入邮箱、电话、QQ号";
    _textFiledUser.keyboardType=UIKeyboardTypeEmailAddress;
    _textFiledUser.clearButtonMode=UITextFieldViewModeAlways;
    
    _textFiledUser.keyboardType=
    UIKeyboardTypeNumbersAndPunctuation;

    _textFiledUser.returnKeyType=UIReturnKeyGoogle;
    _textFiledUser.clearButtonMode=UITextFieldViewModeAlways;

    _textFiledUser.delegate=self;
    
    
    [self.view addSubview:_textFiledUser];
    
}

- (void)addTextFiledPassword{
    _textFilePassword=[[UITextField alloc]initWithFrame:CGRectMake(130, 210, 220, 30)];
    _textFilePassword.backgroundColor=[UIColor whiteColor];
    _textFilePassword.borderStyle=UITextBorderStyleRoundedRect;
    _textFilePassword.placeholder=@"请输入密码";
    _textFilePassword.secureTextEntry=YES;
    _textFilePassword.keyboardType=
    UIKeyboardTypeNumbersAndPunctuation;
    _textFilePassword.returnKeyType=UIReturnKeyGoogle;
    _textFilePassword.clearButtonMode=UITextFieldViewModeAlways;
    _textFilePassword.delegate=self;
    
    [self.view addSubview:_textFilePassword];
    
    
    

    
    
    
}



- (void)addUIlablePassword{
    _lableuser=[[UILabel alloc]initWithFrame:CGRectMake(50, 210, 60, 30)];
    _lableuser.text=@"密码 ：";
    _lableuser.textColor=[UIColor blackColor];
    _lableuser.textAlignment=NSTextAlignmentCenter;
    _lableuser.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_lableuser];
    
    
}



- (void)addForgetpassword{
    
    _forgetpassword=[UIButton buttonWithType:UIButtonTypeSystem];
    
    
    _forgetpassword.frame=CGRectMake(10, 620, 120, 30);
    [_forgetpassword setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //[_forgetpassword setBackgroundColor:[UIColor blueColor]];
    [_forgetpassword setTitle:@"忘记密码？" forState:UIControlStateNormal];
    
    [_forgetpassword addTarget:self action:@selector(forgetpassword:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_forgetpassword];
    
    
}

- (void)forgetpassword:(UIButton *)btn{
    LookforViewController *a=[[LookforViewController alloc]init];
   a.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
      [self presentViewController:a animated:YES completion:nil];
    
    
    
//    [self.view removeFromSuperview];
//    [self.view insertSubview:a.view atIndex:0];
    
    

    
    
    
    
    }



- (void)addRegisterUser{
    
    _RegisterUser=[UIButton buttonWithType:UIButtonTypeSystem];
    
    
    _RegisterUser.frame=CGRectMake(250, 620, 120, 30);
    [ _RegisterUser setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //[_forgetpassword setBackgroundColor:[UIColor blueColor]];
    [ _RegisterUser setTitle:@"新用户" forState:UIControlStateNormal];
    
    [ _RegisterUser addTarget:self action:@selector(RegisterUser:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: _RegisterUser];
    
    
}

- (void)RegisterUser:(UIButton *)btn{
    
    NewUserViewController *newuser=[[NewUserViewController alloc]init];
    [self presentViewController:newuser animated:YES completion:nil];
    
    
    
    
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
