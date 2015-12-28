//
//  LookforViewController.m
//  LoginUI
//
//  Created by scjy on 15/11/19.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "LookforViewController.h"
#import "ViewController.h"
@interface LookforViewController ()
@property(nonatomic, retain) UITextField *emailText;
@property(nonatomic, retain) UIButton *lookbtn;
@property(nonatomic, retain) UIButton *cancelbtn;
@end

@implementation LookforViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    // Do any additional setup after loading the view.
    [self addemailText];
    [self addLookbtn];
    [self addCancelbtn];

}


-(void)addemailText{
    
    _emailText=[[UITextField alloc]initWithFrame:CGRectMake(120 , 120, 120, 30)];
    _emailText.placeholder=@"请输入邮箱或者电话号";
    _emailText.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_emailText];
    
}

-(void)addLookbtn{
    _lookbtn=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _lookbtn.frame=CGRectMake(100, 200, 80, 20);
    [_lookbtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_lookbtn setBackgroundColor:[UIColor redColor]];
    
    [_lookbtn setTitle:@"找回" forState:UIControlStateNormal];
    [_lookbtn addTarget:self action:@selector(lookBtn:) forControlEvents:UIControlEventTouchUpInside ];
    
    [self.view addSubview:_lookbtn];
}




- (void)lookBtn:(UIButton *)btn{
    ViewController *vc=[[ViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    
    
}



-(void)addCancelbtn{
   _cancelbtn=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _cancelbtn.frame=CGRectMake(220, 200, 80, 20);
    [_cancelbtn setTitle:@"取消" forState:UIControlStateNormal];
    [_cancelbtn setBackgroundColor:[UIColor redColor]];
   // [_cancelbtn addTarget:self action:@selector(newUser:) forControlEvents:UIControlEventTouchUpInside];
    [_cancelbtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];

    [self.view addSubview:_cancelbtn];

    
    
    
}


//-(void)newUser:(UIButton *)btn{
//    
//    
//    
//    
//}



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
