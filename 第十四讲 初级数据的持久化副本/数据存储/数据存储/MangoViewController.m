//
//  MangoViewController.m
//  数据存储
//
//  Created by scjy on 15/12/8.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"

@interface MangoViewController ()
@property(nonatomic, retain) UITextView *textView;
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.textView=[[UITextView alloc]initWithFrame:CGRectMake(30,100, 100, 200)];
    
    self.textView.delegate=self;
    self.textView.backgroundColor=[UIColor redColor];
    
    
 self.textView.text=@"sakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscssakdsdssccjscsczkshasdsiskdasdsjdsjsdhjsdjdh";
    
    self.textView.autoresizingMask=UIViewAutoresizingFlexibleHeight;
    
    self.textView.layer.cornerRadius=100/2;
    self.textView.layer.borderWidth=15.0;
    self.textView.layer.borderColor=[UIColor yellowColor].CGColor;
    
    
    
    self.textView.keyboardType=UIKeyboardAppearanceDefault;
    //self.textView.scrollEnabled=NO;
    [self.view addSubview:self.textView];
    
    
    
    
    
}









- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

    
   
    
    return YES;
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

    
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    
    
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    
    
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);

}


-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
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
