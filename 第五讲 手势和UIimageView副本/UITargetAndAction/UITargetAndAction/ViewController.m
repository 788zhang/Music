//
//  ViewController.m
//  UITargetAndAction
//
//  Created by scjy on 15/11/24.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "MagoView.h"
@interface ViewController ()
@property(nonatomic, retain)  MagoView *magoview;
@property(nonatomic, retain)  MagoView *magoview1;
@end

@implementation ViewController



- (void)loadView{
    
    
    [super loadView];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
   
   self.magoview=[[MagoView alloc]initWithFrame:self.view.frame];
    
    self.magoview.backgroundColor=[UIColor grayColor];
    [self.view addSubview:self.magoview];
    [self.magoview addTarget:self action:@selector(ChangeColor)];
    
    [self.magoview release];
    
    self.magoview1=[[MagoView alloc]initWithFrame:self.view.frame];
    
    self.magoview1.backgroundColor=[UIColor grayColor];
    [self.view addSubview:self.magoview1];
    [self.magoview1 addTarget:self action:@selector(ChangeSize)];
    
    [self.magoview1 release];
    


}

-(void)ChangeColor{
    
    self.magoview.backgroundColor=[UIColor redColor];
    
}

-(void)ChangeSize{
    
    
    self.magoview1.frame=CGRectMake(50, 50, arc4random()%360, 60);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
