//
//  DetailViewController.m
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailView.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    DetailView *detail=[[DetailView alloc]initWithFrame:self.view.frame];
    detail.model = self.model;
    
    
    detail.backgroundColor=[UIColor colorWithRed:242/255.0f green:192/255.0f blue:192/255.0f alpha:1];

    [self.view addSubview:detail];


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
