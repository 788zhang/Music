//
//  mainViewController.m
//  UIViewControl
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "mainViewController.h"
#import "DigitalButton.h"
@interface mainViewController ()

@end

@implementation mainViewController
//
-(void)loadView{
    
    [super loadView];
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
}
//视图将要显示
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

    
}
//视图已经显示
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%s %d",__FUNCTION__,__LINE__);
    
}










- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

    self.view.backgroundColor=[UIColor grayColor];
    DigitalButton *btn=[[DigitalButton alloc]initWithFrame:CGRectMake(50, 20,300,600)];
      
   
//    [btn.self.btn setTitle:@"1" forState:UIControlStateNormal];
//    
    
    [self.view addSubview:btn];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
