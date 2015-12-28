//
//  ThreeViewController.m
//  UINavigationController
//
//  Created by scjy on 15/11/27.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ThreeViewController.h"
#import "FourViewController.h"
@interface ThreeViewController ()
@property(nonatomic, retain) UITextField *textfield;
@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 150, self.view.frame.size.width-60, 44);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor yellowColor];
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    
    //当前栈顶的视图控制器
    NSLog(@"%@",self.navigationController.topViewController);
//显示当前的
    NSLog(@"%@",self.navigationController.visibleViewController);
    self.navigationItem.title=@"Three";
    
    self.textfield=[[UITextField alloc]initWithFrame:CGRectMake(30, 300, self.view.frame.size.width-60, 44)];
    self.textfield.borderStyle=UITextBorderStyleRoundedRect;
    self.textfield.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:self.textfield];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    
    btn1.frame=CGRectMake(0, 0, 60, 44);
    [btn1 setTitle:@"返回" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    UIBarButtonItem *leftbtn=[[UIBarButtonItem alloc]initWithCustomView:btn1];
    self.navigationItem.leftBarButtonItem=leftbtn;
    
    
    
    [self.view addSubview:btn];
    
}

-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
    
    
}


-(void)next:(UIButton *)btn{
    
    FourViewController *four=[[FourViewController alloc]init];
    four.str=self.textfield.text;
    [self.navigationController pushViewController:four animated:YES];

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
