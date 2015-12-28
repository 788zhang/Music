//
//  ViewController.m
//  TouchAndEvent
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "UiTouch.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)loadView{
    
    [super loadView];
    UiTouch *touch=[[UiTouch alloc]initWithFrame:self.view.frame];
    [self.view addSubview:touch];
    
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
