//
//  digtailBtn.m
//  UICalculator
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "digtailBtn.h"

@implementation digtailBtn

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self digtailbtn];
    }
    return self;
}





-(void)digtailbtn{
    
    
    
    UIButton *btn=[UIButton buttonWithType:0];
    [btn setTitle:@"0" forState:UIControlStateNormal];
    btn.frame=CGRectMake(10, 20, 30, 40);
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn];
    
    
    UIButton *btn1=[UIButton buttonWithType:0];
    [btn1 setTitle:@"1" forState:UIControlStateNormal];
    btn1.frame=CGRectMake(50, 20, 30, 40);
    [btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn1];
    
    
    UIButton *btn2=[UIButton buttonWithType:0];
    [btn2 setTitle:@"2" forState:UIControlStateNormal];
    btn2.frame=CGRectMake(90, 20, 30, 40);
    [btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn2];
    
    UIButton *btn3=[UIButton buttonWithType:0];
    [btn3 setTitle:@"3" forState:UIControlStateNormal];
    btn3.frame=CGRectMake(130, 20, 30, 40);
    [btn3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn3];
    
    
    
    
    
    UIButton *btn4=[UIButton buttonWithType:0];
    [btn4 setTitle:@"4" forState:UIControlStateNormal];
    btn4.frame=CGRectMake(10, 50, 30, 40);
    [btn4 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn4];
    
    
    UIButton *btn5=[UIButton buttonWithType:0];
    [btn5 setTitle:@"5" forState:UIControlStateNormal];
    btn5.frame=CGRectMake(50, 50, 30, 40);
    [btn5 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn5];
    
    
    UIButton *btn6=[UIButton buttonWithType:0];
    [btn6 setTitle:@"6" forState:UIControlStateNormal];
    btn6.frame=CGRectMake(90, 50, 30, 40);
    [btn6 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn6];
    
    UIButton *btn7=[UIButton buttonWithType:0];
    [btn7 setTitle:@"7" forState:UIControlStateNormal];
    btn7.frame=CGRectMake(130, 50, 30, 40);
    [btn7 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn7];

    
    UIButton *btn8=[UIButton buttonWithType:0];
    [btn8 setTitle:@"8" forState:UIControlStateNormal];
    btn8.frame=CGRectMake(10, 80, 30, 40);
    [btn8 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn8];
    
    
    
    UIButton *btn9=[UIButton buttonWithType:0];
    [btn9 setTitle:@"9" forState:UIControlStateNormal];
    btn9.frame=CGRectMake(50, 80, 30, 40);
    [btn9 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btn9];
    
    UIButton *btnadd=[UIButton buttonWithType:0];
    [btnadd setTitle:@"+" forState:UIControlStateNormal];
    btnadd.frame=CGRectMake(90, 80, 30, 40);
    [btnadd setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btnadd];
   
    
    UIButton *btnsub=[UIButton buttonWithType:0];
    [btnsub setTitle:@"-" forState:UIControlStateNormal];
    btnsub.frame=CGRectMake(130, 80, 30, 40);
    [btnsub setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btnsub];

    
    UIButton *btnmul=[UIButton buttonWithType:0];
    [btnmul setTitle:@"*" forState:UIControlStateNormal];
    btnmul.frame=CGRectMake(10, 110, 30, 40);
    [btnmul setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btnmul];
    
    
    
    UIButton *btndiv=[UIButton buttonWithType:0];
    [btndiv setTitle:@"/" forState:UIControlStateNormal];
    btndiv.frame=CGRectMake(50, 110, 30, 40);
    [btndiv setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:btndiv];
    
    
    UIButton *btnsum=[UIButton buttonWithType:0];
    [btnsum setTitle:@"=" forState:UIControlStateNormal];
    btnsum.frame=CGRectMake(90, 110, 60, 40);
    [btnsum setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [btnsum setBackgroundColor:[UIColor redColor]];
   
    
    [self addSubview:btnsum];
    
    
    
    
}


@end
