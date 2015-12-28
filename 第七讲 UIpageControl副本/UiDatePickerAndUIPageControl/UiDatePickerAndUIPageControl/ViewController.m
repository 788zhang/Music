//
//  ViewController.m
//  UiDatePickerAndUIPageControl
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "MangoView.h"
@interface ViewController ()

@end

@implementation ViewController


-(void)loadView{
    [super loadView];
    
    
    MangoView *mangoview=[[MangoView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:mangoview];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
