//
//  FirstViewController.m
//  UIModeControllView
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "FirstViewController.h"
#import "ModalViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

/*
 定义FirstViewController、
 ViewController。
 将window的根视图控制器指定为导航控制器，导航控制器管理firstVC。
 在firstVC的导航栏左侧设置按钮，设置title为modalView。点击按钮，模态展示导航控制器，导航控制器控制modalVC。
 在modalVC的导航栏左侧设置按钮，设置title为dismiss。点击按钮，返回firstVC。
 */

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
//    
//    self.title=@"模态视图";
//    UIButton *rightbtn=[UIButton buttonWithType:UIButtonTypeCustom];
//    rightbtn.frame=CGRectMake(0, 0, 60, 44);
//    
//    [rightbtn setTitle:@"modalView" forState:UIControlStateNormal];
//    
//    UIBarButtonItem *right=[[UIBarButtonItem alloc]initWithCustomView:rightbtn];
    
  //    self.navigationItem.rightBarButtonItem=right;
    
    
    
    
    self.view.backgroundColor=[UIColor redColor];
    
    UIBarButtonItem *barbtn1=[[UIBarButtonItem alloc]initWithTitle:@"modalView" style:UIBarButtonItemStylePlain target:self action:@selector(modalVC)];
    
    self.navigationItem.rightBarButtonItem=barbtn1;

    
}




-(void)modalVC{
    ModalViewController *model=[[ModalViewController alloc]init];
    
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
