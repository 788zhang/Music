//
//  FirstViewController.m
//  Singleton（单例）
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "MangoSingleton.h"

@interface FirstViewController ()
@property(nonatomic, retain)UITextField *textfield;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"第一页";
    
    self.view.backgroundColor=[UIColor redColor];
    
    UIBarButtonItem *barbtn1=[[UIBarButtonItem alloc]initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(modalVC)];
    
    self.navigationItem.rightBarButtonItem=barbtn1;
    
    
    
    self.textfield=[[UITextField alloc]initWithFrame:CGRectMake(30, self.view.frame.size.height/3, self.view.frame.size.width-60, 44)];
    self.textfield.delegate=self;
    self.textfield.borderStyle=UITextBorderStyleRoundedRect;
    self.textfield.placeholder=@"请输入";
    self.textfield.textAlignment=NSTextAlignmentCenter;
    self.textfield.textColor=[UIColor blackColor];
    [self.view addSubview:self.textfield];
    
    
    
    
    
    
    
    
   }

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.textfield resignFirstResponder];
    
}


-(void)modalVC{
    
    
    //单例在使用过程中不能alloc init：：为了确保单例的唯一性
    MangoSingleton *mango=[MangoSingleton sharedInstance];
    
    
    SecondViewController *model=[[SecondViewController alloc]init];
    mango.inputText=self.textfield.text;
    
    // model.title=self.textfield.text;
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
