//
//  SecondViewController.m
//  Singleton（单例）
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title=self.str;
    self.view.backgroundColor=[UIColor greenColor];
    
    UIBarButtonItem *barbtn1=[[UIBarButtonItem alloc]initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(modalVC)];
    
    self.navigationItem.rightBarButtonItem=barbtn1;

    
    
    
    self.textfield=[[UITextField alloc]initWithFrame:CGRectMake(30, self.view.frame.size.height/3, self.view.frame.size.width-60, 44)];
   
    self.textfield.borderStyle=UITextBorderStyleRoundedRect;
    self.textfield.placeholder=@"请输入";
    self.textfield.textAlignment=NSTextAlignmentCenter;
    self.textfield.textColor=[UIColor blackColor];
    [self.view addSubview:self.textfield];
    
    
    
    
    
    
}

-(void)modalVC{
    ThirdViewController *model=[[ThirdViewController alloc]init];
//    model.textfield.text=self.textfield.text;
//    NSLog(@"%@",model.textfield.text);
    
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:model];
    //模态控制器弹入的显示效果(效果不明显)
    model.modalPresentationStyle=UIModalPresentationCurrentContext;
    //模态控制器弹入的动画效果
    model.modalTransitionStyle=UIModalTransitionStylePartialCurl;
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
    
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
