//
//  ShowViewController.m
//  UIAfter09
//
//  Created by scjy on 15/12/1.
//  Copyright (c) 2015年 苹果IOS. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController ()

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor redColor];
    
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(30, 100, 300, 44)];
    
    label.text=_str;
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor=[UIColor blackColor];
    label.backgroundColor=[UIColor whiteColor];
    
    
    [self.view addSubview:label];
    
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(30, 160, 300, 44)];
    
    label1.text=_str1;
    label1.textAlignment=NSTextAlignmentCenter;
    label1.textColor=[UIColor blackColor];
    label1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:label1];

    
    
    
    
    UIImageView *imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:self.str2]];
    
    imageview.frame=CGRectMake(30, 240, 300, 400);
    [self.view addSubview:imageview];
    
    
    
    
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
