//
//  ZhaoViewController.m
//  zhangAndZhao
//
//  Created by scjy on 15/12/27.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "ZhaoViewController.h"
#import "Mango.h"
@interface ZhaoViewController ()

@end

@implementation ZhaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Mango *mango=[[Mango alloc]initWithFrame:self.view.frame];
    
    
    [self.view addSubview:mango];
    
    
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
