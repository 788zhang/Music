//
//  BtnView.m
//  ArrCalculator
//
//  Created by scjy on 15/11/21.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "BtnView.h"

@implementation BtnView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self UIview];
        
        
    }
    return self;
}



-(void)UIview{
    
   _lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 30, self.frame.size.width, 100)];
    
    _lable.backgroundColor=[UIColor grayColor];   //设置背景颜色
    _lable.textColor=[UIColor redColor];         //字体颜色
   
    _lable.textAlignment = NSTextAlignmentCenter;
   _lable.font=[UIFont systemFontOfSize:32.4];    //设置字体
    [self  addSubview:_lable];
    
    NSArray *arry=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9", nil];
    int n=0;
    for (int i=0; i<3; i++) {
        for (int j=0; j<3; j++) {
            self.btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
            self.btn.frame=CGRectMake(30+65*j, 150+65*i, 60, 60);
            
            self.btn.backgroundColor=[UIColor grayColor];
            [self.btn setTitle:[arry objectAtIndex:n++] forState:UIControlStateNormal];
            [self.btn addTarget:self action:@selector(Digital:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:self.btn];
               }
    }
    UIButton *button0=[UIButton buttonWithType:UIButtonTypeCustom];  //创建一个圆角矩形的按钮
    [button0 setFrame:CGRectMake(30, 345, 60, 60)];                                   [button0 setTitle:@"0" forState:UIControlStateNormal];                //设置button主题
    button0.titleLabel.textColor = [UIColor blackColor];       //设置0键的颜色
    button0.backgroundColor=[UIColor orangeColor];
    [button0 addTarget:self action:@selector(Digital:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button0];
    
    
    //添加运算符
    NSArray *array1=[NSArray arrayWithObjects:@"+",@"-",@"*",@"/",nil];
    for (int i=0; i<4; i++)
    {
        UIButton *button1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button1 setFrame:CGRectMake(225, 150+65*i, 60, 60)];
        [button1 setTitle:[array1 objectAtIndex:i] forState:UIControlStateNormal];
        button1.backgroundColor=[UIColor orangeColor];
        
        
        [self addSubview:button1];
        [button1 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    }

    
    
    
    
    //添加.
    UIButton *button4=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button4 setFrame:CGRectMake(95, 345, 60, 60)];
    [button4 setTitle:@"." forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(Digital:) forControlEvents:UIControlEventTouchUpInside];
    button4.backgroundColor=[UIColor orangeColor];
    [self addSubview:button4];
    
    

    UIButton *button5=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button5 setFrame:CGRectMake(160, 345, 60, 60)];
    [button5 setTitle:@"=" forState:UIControlStateNormal];
    button5.backgroundColor=[UIColor orangeColor];
    [button5 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button5];
    
    UIButton *button6=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button6 setFrame:CGRectMake(160, 400, 120, 60)];
    [button6 setTitle:@"clean" forState:UIControlStateNormal];
    button6.backgroundColor=[UIColor orangeColor];
    [button6 addTarget:self action:@selector(clean:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button6];
    

    
    
    
    self.string=[[NSMutableString alloc]init];//初始化可变字符串，分配内存
    self.str = [[NSString alloc]init];
}




-(void)clean:(UIButton *)btn{
    
    [self.string setString:@""];
    self.lable.text=@"";
    self.str=@"";
    
    
}



-(void)Digital:(id)btn{
    [self.string appendString:[btn currentTitle]];
    self.lable.text=self.string;
    self.num1=[self.lable.text doubleValue];
    
    
   }

-(void)action:(id)sender{
    
    if ([self.str isEqualToString:@""]) {
        self.num2=self.num1;
       
        self.str=[sender currentTitle];
        self.lable.text=self.str;
        [self.string setString:@""];
        
        
        
    } else {
        if ([self.str isEqualToString:@"+"]) {
             self.num2+=self.num1;
            
            if ([[sender currentTitle] isEqualToString:@"="]) {
                self.lable.text=[NSString stringWithFormat:@"%ld",(long)self.num2];
                
                
            }//连续运算
            else if([[sender currentTitle]isEqualToString:@"+"]||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"*"]||[[sender currentTitle]isEqualToString:@"/"])
            {
                
                self.lable.text=[NSString stringWithFormat:@"%ld",self.num2];
                
                [self.string setString:@""];//不可变字符串不能用字面量
                
                self.str=[sender currentTitle];
                [self.string appendString:self.str];
                [self.string setString:@""];
                
                
                
            }

            
            
        }
        
        if ([self.str isEqualToString:@"-"]) {
            self.num2-=self.num1;
            if ([[sender currentTitle]isEqualToString:@"="]) {
                self.lable.text=[NSString stringWithFormat:@"%ld",self.num2];
                
                
                
            } else if([[sender currentTitle]isEqualToString:@"+"] ||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"*"]||[[sender currentTitle]isEqualToString:@"/"]){
                
                self.lable.text=[NSString stringWithFormat:@"%ld",self.num2];
                [self.string setString:@""];
                self.str=[sender currentTitle];
                [self.string appendString:self.str];
                self.lable.text=self.string;
                [self.string setString:@""];
                         }
                
                }
        
        
        
        if ([self.str isEqualToString:@"*"]) {
             self.num2 *=self.num1;
            if ([[sender currentTitle]isEqualToString:@"="]) {
                self.lable.text=[NSString stringWithFormat:@"%ld",self.num2];
            } else if([[sender currentTitle]isEqualToString:@"+"] ){
                self.lable.text=[NSString stringWithFormat:@"%ld",self.num2];
                [self.string setString:@""];
                self.str=[sender currentTitle];
                [self.string appendString:self.str];
                self.lable.text=self.string;
                [self.string setString:@""];
                
                
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
       }
}
@end
