//
//  FirstViewController.m
//  UIView
//
//  Created by scjy on 15/11/18.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "FirstViewController.h"
//延展
@interface FirstViewController ()
{
    
    UIImageView  *_imageview;
    UIButton *_firebutton;
}


@end

@implementation FirstViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    //设置视图控制器的颜色
    //self.view.backgroundColor=[UIColor yellowColor];
    [self addUIImage];
    [self addbutton];
    
    
}

-(void)addUIImage{
    UIImage *image=[UIImage imageNamed:@"1"];
    _imageview=[[UIImageView alloc]initWithImage:image];
    _imageview.frame=CGRectMake(20, 20,280, 120);
    _imageview.contentMode=UIViewContentModeScaleAspectFit;
    [self.view addSubview:_imageview];
    [_imageview release];
    
}

-(void)addbutton{
    
    _firebutton=[[UIButton alloc]initWithFrame:CGRectMake(20, 20, 40, 20)];
    
    _firebutton.backgroundColor=[UIColor purpleColor];
    [_firebutton setTitle:@"按钮" forState:UIControlStateNormal];
    
    [self.view addSubview:_firebutton];
    
    
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
