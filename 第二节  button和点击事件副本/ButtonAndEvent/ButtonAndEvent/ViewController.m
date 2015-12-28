//
//  ViewController.m
//  ButtonAndEvent
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, retain) UITextField *textField;
@end

@implementation ViewController
//输入框点击键盘右下角按钮return响应的方法
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //将键盘作为第一响应者（回收键盘）
    [textField resignFirstResponder];
    
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    
    //开辟内存空间，并且初始化（设置frame）
    self.textField=[[UITextField alloc]initWithFrame:CGRectMake(50,150, 300, 40)];
    //文字显示的一些控制
    self.textField.backgroundColor=[UIColor colorWithRed:0.5 green:0.6 blue:0.2 alpha:1];
    self.textField.text=@"我是text11";
    self.textField.textAlignment=NSTextAlignmentCenter;
    self.textField.textColor=[UIColor redColor];
    self.textField.font=[UIFont systemFontOfSize:34];
    //borderStyle是枚举类型的
    self.textField.borderStyle=UITextBorderStyleBezel;
    //%70是灰色的,,,占位字符串
    self.textField.placeholder=@"请输入密码";
    
    
    
    //输入控制方面的属性
    //是否允许输入，默认是yes
    self.textField.enabled=YES;
    //是否以密文显示
    self.textField.secureTextEntry=YES;
    //弹出键盘的类型  枚举类型
    self.textField.keyboardType=3;
    
    //设置右下角的return键
    self.textField.returnKeyType=UIReturnKeyGoogle;
    
    //当开始输入的时候，是否清空内容  默认是no
    self.textField.clearsOnBeginEditing=YES;
    //清除按钮显示时机,最右边会显示x
    /*
     UITextFieldViewModeNever,
     UITextFieldViewModeWhileEditing,
     UITextFieldViewModeUnlessEditing,
     UITextFieldViewModeAlways
     */
    self.textField.clearButtonMode=UITextFieldViewModeAlways;
    UIView *orange=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    orange.backgroundColor=[UIColor orangeColor];
    
    //text.leftView=orange;
    //输入框左视图显示时机
    self.textField.leftViewMode=UITextFieldViewModeAlways;
    //设置text的代理，self指当前类ViewController，把self赋值给delegate属性
    
    
    //delegate 已经被系统定义好了@property(nonatomic,assign) id<UITextFieldDelegate> delegate;
    self.textField.delegate=self;
   
    
    [self.view addSubview:self.textField];
       

    
    
    
    
    
    
    
    
    
    UIButton *loginbutton=[UIButton buttonWithType:UIButtonTypeSystem];
    //设置frame
    loginbutton.frame=CGRectMake(80, 300, 200, 50);
    //设置按钮标题   setTitle：第一个参数是字符串 forState:（按钮状态）第二个是枚举类型的，正常状态下的显示此标题
   // [loginbutton setTitle:@"别点我" forState:UIControlStateNormal];
    //设置背景颜色
   // [loginbutton setBackgroundColor:[UIColor grayColor]];
    //设置字体颜色
    [loginbutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
    //tatget目标，点击事件在那里
    //self当前的viewController
    //action:  btn需要执行的方法
    //@selector(loginActon:)括号内需要响应的函数名字
    //forControlEvents:  按键响应事件的时间，也就是按钮什么时候响应用户的交互时间UIControlEventTouchUpInside点击的时候响应
    
    [loginbutton addTarget:self action:@selector(loginActon:) forControlEvents:UIControlEventTouchUpInside];
    //点击的时候，显示的内容
    [loginbutton setTitle:@"iOS" forState:UIControlStateHighlighted];
  //设置按钮前景图片
   //[loginbutton setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];
    //设置按钮背景图片
[loginbutton setBackgroundImage:[UIImage imageNamed:@"login.jpg"] forState:UIControlStateNormal];

    
    //
    [self.view addSubview:loginbutton];
    
  }



//按钮响应方法，参数btn和上面的loginbutton是同一个按钮，指向同一块内存地址
- (void)loginActon:(UIButton *)btn{
    
//    UIAlertView *alerview=[[UIAlertView alloc]initWithTitle:@"服务器故障" message:@"非常抱歉，现在正在修复中" delegate:nil cancelButtonTitle:@"退出" otherButtonTitles:@"等待。。。", nil];
//    
//    [alerview show];
    
    [self.textField resignFirstResponder];
    
    
    
    //移除方法，让它只执行一次，注意移除的方法和上面添加的方法要一样，和响应类型
    //[btn removeTarget:self action:@selector(loginActon:) forControlEvents:UIControlEventTouchUpInside];
    
    

   }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
