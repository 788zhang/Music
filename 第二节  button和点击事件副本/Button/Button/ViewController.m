//
//  ViewController.m
//  Button
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *text;
}
@end

@implementation ViewController
//controller视图已经加载完成，我们在controller视图加载完成之后写我们的代码
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 80, 80)];
    
    /***
    //使用RGB色值去设置颜色，RGB的每个颜色色值是0.0~1.0范围的数
    red
    The red component of the color object, specified as a value from 0.0 to 1.0.
    green
    The green component of the color object, specified as a value from 0.0 to 1.0.
    blue
    The blue component of the color object, specified as a value from 0.0 to 1.0.
    alpha
    The opacity value of the color object, specified as a value from 0.0 to 1.0.
     
     ****/
    view.backgroundColor=[UIColor colorWithRed:0.6
                                         green:0.1          blue:0.2
                                         alpha:1];
    [self.view addSubview:view];
    
    
    [self addtext];
    [self loginbutton];
    
    
    
}


-(void)addtext{
    
    //开辟内存空间，并且初始化（设置frame）
     text=[[UITextField alloc]initWithFrame:CGRectMake(50,150, 300, 40)];
    //文字显示的一些控制
    text.backgroundColor=[UIColor colorWithRed:0.5 green:0.6 blue:0.2 alpha:1];
    text.text=@"我是text11";
    text.textAlignment=NSTextAlignmentCenter;
    text.textColor=[UIColor redColor];
    text.font=[UIFont systemFontOfSize:34];
//borderStyle是枚举类型的
    text.borderStyle=UITextBorderStyleBezel;
    //%70是灰色的,,,占位字符串
    text.placeholder=@"请输入密码";
    
    
    
    //输入控制方面的属性
    //是否允许输入，默认是yes
    text.enabled=YES;
    //是否以密文显示
    text.secureTextEntry=YES;
    //弹出键盘的类型  枚举类型
    text.keyboardType=3;
    //当开始输入的时候，是否清空内容  默认是no
    text.clearsOnBeginEditing=YES;
    //清除按钮显示时机,最右边会显示x
    /*
     UITextFieldViewModeNever,
     UITextFieldViewModeWhileEditing,
     UITextFieldViewModeUnlessEditing,
     UITextFieldViewModeAlways
     */
    text.clearButtonMode=UITextFieldViewModeAlways;
    UIView *orange=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    orange.backgroundColor=[UIColor orangeColor];
    
    text.leftView=orange;
    //输入框左视图显示时机
    text.leftViewMode=UITextFieldViewModeAlways;
    
    
    
    [self.view addSubview:text];
    [text release];
    
    
}

-(void)loginbutton
{
    UIButton *loginbutton=[UIButton buttonWithType:UIButtonTypeSystem];
//设置frame
    loginbutton.frame=CGRectMake(30, 300, 350, 44);
    //设置按钮标题   setTitle：第一个参数是字符串 forState:（按钮状态）第二个是枚举类型的，正常状态下的显示此标题
    [loginbutton setTitle:@"别点我" forState:UIControlStateNormal];
    [loginbutton setBackgroundColor:[UIColor grayColor]];
        [loginbutton addTarget:self action:@selector(addbtn:)   forControlEvents:UIControlEventTouchUpInside];
    
    //加入父视图
    [self.view addSubview:loginbutton];
    //button  是便利构造器创建的方法，不需要release
    
    
}


-(void)addbtn:(UIButton*)btn{
   
//    if ([text.text isEqual:@"8"]&&[_password.text isEqual:@"z"]) {
//        NSLog(@"登陆成功");
//    } else {
//        NSLog(@"登陆失败");
//    }
//    
    UIAlertView *alerview=[[UIAlertView alloc]initWithTitle:@"服务器故障" message:@"非常抱歉，现在正在修复中" delegate:nil cancelButtonTitle:@"退出" otherButtonTitles:@"等待。。。", nil];
    
    [alerview show];

    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
