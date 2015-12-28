//
//  FourViewController.m
//  UINavigationController
//
//  Created by scjy on 15/11/27.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "FourViewController.h"
#import "TwoViewController.h"
@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 100, self.view.frame.size.width-60, 44);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor=[UIColor blueColor];

    [self.view addSubview:btn];
    
    
    
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(30, 200, self.view.frame.size.width-60, 44);
    [btn1 setTitle:@"返回指定视图" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(next1:) forControlEvents:UIControlEventTouchUpInside];
    btn1.backgroundColor=[UIColor blueColor];
    
    [self.view addSubview:btn1];
    
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame=CGRectMake(30, 300, self.view.frame.size.width-60, 44);
    [btn2 setTitle:@"返回跟视图" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(next2:) forControlEvents:UIControlEventTouchUpInside];
    btn2.backgroundColor=[UIColor blueColor];
    
    [self.view addSubview:btn2];
    
    
    
    
    
      self.navigationItem.title=self.str;
}


//
-(void)next1:(UIButton *)btn{
    NSArray *VCarr= self.navigationController.viewControllers;
    
    NSLog(@"%@",VCarr);
    
    if ([VCarr[1] isKindOfClass:[TwoViewController class]]) {
         [self.navigationController popToViewController:VCarr[1] animated:YES];
    }
   
    
    
}

//返回首页，跟视图
-(void)next2:(UIButton *)btn{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}



//返回，，出栈
-(void)next:(UIButton *)btn{
    
      [self.navigationController popViewControllerAnimated:YES];
  
    
    
}

//返回跟视图
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
