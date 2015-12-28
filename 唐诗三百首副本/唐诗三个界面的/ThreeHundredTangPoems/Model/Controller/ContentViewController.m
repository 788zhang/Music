//
//  ContentViewController.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ContentViewController.h"
#import "ContentView.h"
#import "Content.h"

@interface ContentViewController ()

@end

@implementation ContentViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title=self.title;
    
    Content *content=[[Content alloc]initWithFrame:self.view.frame];
   
    UIBarButtonItem *bar=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    
    
    
    self.navigationItem.leftBarButtonItem=bar;
    
    
    
    content.model=self.model;

    [self.view addSubview:content];
    

}






- (void)back{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
