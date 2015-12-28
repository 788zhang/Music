//
//  ThreePoemViewController.m
//  Poem
//
//  Created by scjy on 15/12/6.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import "ThreePoemViewController.h"
#import "PoemTableViewCell.h"
@interface ThreePoemViewController ()
@end

@implementation ThreePoemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    PoemModal *modal = [[PoemModal alloc] initWithName:self.dict[self.modal.poemName]];
    UITextView *view = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height )];
    view.text = modal.poemName;
    NSLog(@"%@",modal.poemName);
    view.font = [UIFont systemFontOfSize:20.0];
    view.backgroundColor  = [UIColor colorWithPatternImage:[UIImage imageNamed:@"3.png"]];
    [self.view addSubview:view];
    

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
