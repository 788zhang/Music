//
//  MainViewController.m
//  UITouchAndEvent
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MainViewController.h"
#import "MagoTouchAndEven.h"
@interface MainViewController ()

@end

@implementation MainViewController
//重写loadView方法，加载当前视图控制器自带的View
//  首先执行这个方法   覆盖视图
- (void)loadView{
    
    [super loadView];//不写，会崩溃
    //用自定义的View去覆盖Controller自带的View
    self.view=[[MagoTouchAndEven alloc]initWithFrame:self.view.frame];
    //self.view.backgroundColor=[UIColor redColor];
    
    
    
    
    
}
//添加视图
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//    MagoTouchAndEven  *magoView=[[MagoTouchAndEven alloc]initWithFrame:self.view.frame];
//    [self.view addSubview:magoView];
//    [magoView release];


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
