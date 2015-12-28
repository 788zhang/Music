//
//  TwoViewController.m
//  UINavigationController
//
//  Created by scjy on 15/11/27.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor greenColor];
   
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 150, self.view.frame.size.width-60, 44);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor blueColor];
    [btn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    //导航栏 左上角返回按钮
    
    
    UIButton *backbtn=[UIButton buttonWithType:UIButtonTypeCustom];
    backbtn.frame=CGRectMake(0, 0, 60, 44);
    [backbtn setTitle:@"返回" forState:UIControlStateNormal];
    [backbtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backbtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftbtn=[[UIBarButtonItem alloc]initWithCustomView:backbtn];
    
    self.navigationItem.leftBarButtonItem=leftbtn;
    
    [self.view addSubview:btn];
    self.navigationItem.title= self.str ;
    
}
-(void)back{
    //返回上一页
    [self.navigationController popViewControllerAnimated:YES];
    
}


-(void)next:(UIButton *)btn{
    
    ThreeViewController *three=[[ThreeViewController alloc]init];
   
    [self.navigationController pushViewController:three animated:YES];
    
    
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
