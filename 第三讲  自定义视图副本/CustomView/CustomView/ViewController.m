//
//  ViewController.m
//  CustomView
//
//  Created by scjy on 15/11/22.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "LableAndButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    LableAndButton *view=[[LableAndButton alloc]initWithFrame:CGRectMake(0, 0, 375, 670)];
    view.backgroundColor=[UIColor grayColor];
    view.lable.text=@"用户ming";
    view.textField.placeholder=@"快输入";
    
    
    [self.view addSubview:view];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
