//
//  MainViewController.m
//  UIimageView
//
//  Created by scjy on 15/11/25.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MainViewController.h"
#import "MangoView.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    MangoView *mangoview=[[MangoView alloc]initWithFrame:self.view.frame];
    
    [self.view addSubview:mangoview];
    [mangoview release];
    
    
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
