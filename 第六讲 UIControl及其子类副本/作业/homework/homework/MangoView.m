//
//  MangoView.m
//  homework
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"
#define  kwidth  self.frame.size.width
@interface MangoView()
@property(nonatomic, retain) UISlider *redslider;
@property(nonatomic, retain) UISlider *greenslider;
@property(nonatomic, retain) UISlider *blueslider;
@property(nonatomic, retain) UISegmentedControl *segment;
@property(nonatomic, retain) UIView *view1;


@end


@implementation MangoView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadCustomView];
    }
    return self;
}


/*
 使用UISegmentedControl切换登录界面、注册界面，找回密码界面。
 注：UISegmentedControl放在屏幕最上方，登录、注册、找回密码界面紧接着UISegmentedControl下方显示。
 
 */
-(void)loadCustomView{
    
    UISegmentedControl *segment=[[UISegmentedControl alloc]initWithItems:@[@"登陆",@"注册",@"找回密码"]];
    
    segment.frame=CGRectMake(30, 40, kwidth-60, 30);
   
    [segment addTarget:self action:@selector(action:) forControlEvents:UIControlEventValueChanged];
    
    
    [self addSubview:segment];
    
    
}

-(void)action:(UISegmentedControl *)segment{
    switch (segment.selectedSegmentIndex) {
        case 0:
            [self loading];
            break;
        case 1 :
            [self Resign];
            break;
        case 2:
            [self lookforPassword];
            break;
            
        default:
            break;
    }
    
}


-(void)loading{
    self.view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 80, self.frame.size.width, self.frame.size.height)];
    self.view1.backgroundColor = [UIColor colorWithRed:79.0/255.0 green:237.0/255.0 blue:59.0/255.0 alpha:1.0];
    [self addSubview:self.view1];
   
    UILabel *yonghumingLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, 80, 50)];
    yonghumingLabel.text = @"用户名";
    yonghumingLabel.textAlignment = NSTextAlignmentCenter;
    [self.view1 addSubview:yonghumingLabel];
    
    UITextField *filed = [[UITextField alloc] initWithFrame:CGRectMake(110, 150, 200, 50)];
    filed.placeholder = @"请输入你的用户名";
    filed.backgroundColor = [UIColor whiteColor];
    filed.textAlignment = NSTextAlignmentCenter;
    filed.clearButtonMode = UITextFieldViewModeAlways;
    filed.delegate = self;
    [self.view1 addSubview:filed];
    
    UILabel *mimaLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 210, 80, 50)];
    mimaLabel.text = @"密  码";
    mimaLabel.textAlignment = NSTextAlignmentCenter;
    [self.view1 addSubview:mimaLabel];
    
    UITextField *filed2 = [[UITextField alloc] initWithFrame:CGRectMake(110, 210, 200, 50)];
    filed2.placeholder = @"请输入密码";
    filed.backgroundColor = [UIColor whiteColor];
   
    filed2.textAlignment = NSTextAlignmentCenter;
    filed2.secureTextEntry = YES;
    filed2.clearButtonMode = UITextFieldViewModeAlways;
    [self.view1 addSubview:filed2];
    
    UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    login.frame = CGRectMake(30, 280, 150, 50);
    [login setTitle:@"登录" forState:UIControlStateNormal];
    [self.view1 addSubview:login];
    
    
    UIButton *zhuce = [UIButton buttonWithType:UIButtonTypeCustom];
    zhuce.frame = CGRectMake(210, 280, 150, 50);
    [zhuce setTitle:@"取消" forState:UIControlStateNormal];
    [self.view1 addSubview:zhuce];
    
    
    
}
-(void)Resign{
    self.view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 80, self.frame.size.width, self.frame.size.height)];
    self.view1.backgroundColor = [UIColor colorWithRed:225.0/255.0 green:22.0/255.0 blue:59.0/255.0 alpha:1.0];
    [self addSubview:self.view1];
    
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
    [self addSubview:name];
    [self addSubview:password];
    [self addSubview:confirmPassword];
    [self addSubview:phoneNumber];
    [self addSubview:email];
    
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
    [self addSubview:emailKuang];
    [self addSubview:phoneNumKuang];
    [self addSubview:comfimPassKuang];
    [self addSubview:passKuang];
    [self addSubview:nameKuang];
    
    UIButton *resgisZhu = [UIButton buttonWithType:UIButtonTypeCustom];
    resgisZhu.frame = CGRectMake(90, 380, 50, 50);
    [resgisZhu setTitle:@"返回" forState:UIControlStateNormal];
    
    
    
    [resgisZhu setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    UIButton *cancelXiao = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelXiao.frame = CGRectMake(260, 380, 50, 50);
    [cancelXiao setTitle:@"注册" forState:UIControlStateNormal];
    [cancelXiao setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:cancelXiao];
    [self addSubview:resgisZhu];
    

}

-(void)lookforPassword{
    
    self.view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 80, self.frame.size.width, self.frame.size.height)];
    self.view1.backgroundColor = [UIColor colorWithRed:79.0/255.0 green:237.0/255.0 blue:59.0/255.0 alpha:1.0];
    [self addSubview:self.view1];
   
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(50, 90, self.frame.size.width - 20, 30)];
    field.placeholder = @"电子邮箱";
    field.backgroundColor = [UIColor whiteColor];
    field.borderStyle = UITextFieldViewModeWhileEditing;
    [self.view1 addSubview:field];
    
    
    
    UIButton *bu1 = [UIButton buttonWithType:UIButtonTypeCustom];
    bu1.frame = CGRectMake(60, 150, 90, 30);
    [bu1 setTitle:@"找回" forState:UIControlStateNormal];
    bu1.backgroundColor = [UIColor whiteColor];
    [bu1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view1 addSubview:bu1];
    
    UIButton *bu2 = [UIButton buttonWithType:UIButtonTypeCustom];
    bu2.frame = CGRectMake(180, 150, 90, 30);
    bu2.backgroundColor = [UIColor whiteColor];
    [bu2 setTitle:@"取消" forState:UIControlStateNormal];
    [bu2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view1 addSubview:bu2];
    
}



@end
