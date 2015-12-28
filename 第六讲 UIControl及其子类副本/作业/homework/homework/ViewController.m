//
//  ViewController.m
//  homework
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MangoView *mangoview=[[MangoView alloc]initWithFrame:self.view.frame];
    
    
    [self.view addSubview:mangoview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
