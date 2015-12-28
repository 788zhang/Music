//
//  ViewController.m
//  UICalculator
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "digtailBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor grayColor];
    digtailBtn *btn=[[digtailBtn alloc]initWithFrame:CGRectMake(20, 220,300,300)];
    
    [self.view addSubview:btn];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
