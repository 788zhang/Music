//
//  OneViewController.m
//  UINavigationController
//
//  Created by scjy on 15/11/27.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
@interface OneViewController ()

@property(nonatomic, retain) UITextField *textField;


@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 150, self.view.frame.size.width-60, 44);
    
    btn.backgroundColor=[UIColor blueColor];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    
    
       
    [self.view addSubview:btn];
    self.navigationItem.title=@"One";
    
    //默认导航栏是透明的yes，no是不透明 ，视图会在导航栏下边显示
    self.navigationController.navigationBar.translucent=YES;
    
    //修改的是导航栏上的按钮和文字
    self.navigationController.navigationBar.tintColor=[UIColor blueColor];
    //导航栏样式
    self.navigationController.navigationBar.barStyle=UIBarStyleDefault;
    //导航栏的背景颜色
    self.navigationController.navigationBar.barTintColor=[UIColor yellowColor];
    
    //导航栏上还有navigationItem
    UIBarButtonItem *leftbarbtnItme=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(leftAction:)];
    
    self.navigationItem.leftBarButtonItem=leftbarbtnItme;
    //使用自定义视图创建button
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    
    btn1.frame=CGRectMake(0, 0, 60, 44);
    [btn1 setTitle:@"下一页" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(right:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //把创建的button加到里面
    UIBarButtonItem *rightbtn=[[UIBarButtonItem alloc]initWithCustomView:btn1];
    
    self.navigationItem.rightBarButtonItem=rightbtn;
    
    self.textField=[[UITextField alloc]initWithFrame:CGRectMake(30,300, self.view.frame.size.width-60, 44)];
    self.textField.borderStyle=UITextBorderStyleRoundedRect;
    self.textField.placeholder=@"请输入内容";
    [self.view addSubview:self.textField];
    
    

}

-(void)leftAction:(UIBarButtonItem *)btn{
    
    TwoViewController *twoVC=[[TwoViewController alloc]init];
    
    
    [self.navigationController pushViewController:twoVC animated:YES];
    
    
}

-(void)right:(UIBarButtonItem *)btn{
    
    TwoViewController *twoVC=[[TwoViewController alloc]init];
    
    
    
    [self.navigationController pushViewController:twoVC animated:YES];
    
    
}



-(void)next:(UIButton *)btn{

    TwoViewController *twoVC=[[TwoViewController alloc]init];
    
    twoVC.str=self.textField.text;
    
    [self.navigationController pushViewController:twoVC animated:YES];
    
    
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
