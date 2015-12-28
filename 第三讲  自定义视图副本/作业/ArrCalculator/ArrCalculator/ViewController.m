//
//  ViewController.m
//  ArrCalculator
//
//  Created by scjy on 15/11/21.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "BtnView.h"
@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    BtnView *a=[[BtnView alloc]initWithFrame:CGRectMake(0, 0, 300, 500)];
    a.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:a];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
