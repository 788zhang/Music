//
//  MangoViewController.m
//  UIBlockCallBack
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
#import "ColorModel.h"
@interface MangoViewController ()

@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"BlockCallBack";
    self.view.backgroundColor=[UIColor redColor];
    
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 300, self.view.frame.size.width-60, 44);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    
    btn.backgroundColor=[UIColor blueColor];
    [self.view addSubview:btn];
    
    

    
    
    
    
    
    //无参无返回值
    void (^block1)()=^void(){
        NSLog(@"我是无参无返回值");
    };
    block1();
    //有参数无返回值
    void(^block)(int x)=^void(int x){
        
        
        NSLog(@"%d",x);
    };
    
    block(5);
    
    
    
    //有参数有返回
    
    
    
    
    NSInteger (^block3)(NSInteger  x)=^NSInteger(NSInteger x){
        
        
        return x;
    };
    
    
    NSLog(@"%ld",block3(6));
    
    
    
    NSString* (^block4)()=^NSString *(){
      
        return @"我是无参数有返回值";
    };
    NSLog(@"%@",block4());
    
    
    
    

    
    
    
}

-(void)changeColor{
    
    ColorModel *model=[[ColorModel alloc]init];
    
    
    //在block的内部，不能直接使用实例变量，self调用属性，因为block会造成self引用计数加一，导致引用计数问题
    
    __block UIViewController *weakSelf=self;
    
    [model getViewColorWithColorBlock:^(UIColor *willSetColor) {
       //给view重新设置颜色
       
       weakSelf.view.backgroundColor=willSetColor;
   }];
    
    
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
