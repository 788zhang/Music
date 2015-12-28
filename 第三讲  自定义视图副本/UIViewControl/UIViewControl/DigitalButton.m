//
//  DigitalButton.m
//  UIViewControl
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "DigitalButton.h"

@implementation DigitalButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self digtialBtn];
    }
    return self;
}



-(void)digtialBtn{
    
    for (int i=0; i<4; i++) {
        for (int j=0; j<5; j++) {
           self.btn=[UIButton buttonWithType:0];
            self.btn.frame=CGRectMake(10+30*i, 20+40*j, 30, 40);
            [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
            
            self.arr=[[NSMutableArray alloc]init];
            [self.arr addObject:self.btn];
            
            [self addSubview:self.btn];
            
            NSArray *arr=[NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"+",@"-",@"*",@"/", nil];
            
            
            for (int i=0; i<self.arr.count; i++) {
                [self.arr[i] setTitle:arr[i] forState:UIControlStateNormal];
            }

            
            
        }
    }
    

    
    
    
    
    
    
    
    
        
//             UIButton *btn=[UIButton buttonWithType:0];
//           [btn setTitle:@"0" forState:UIControlStateNormal];
//    btn.frame=CGRectMake(10, 20, 30, 40);
//    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//            [self addSubview:btn];
//            
//    
//    UIButton *btn1=[UIButton buttonWithType:0];
//    [btn1 setTitle:@"1" forState:UIControlStateNormal];
//    btn1.frame=CGRectMake(50, 20, 30, 40);
//    [btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self addSubview:btn1];
//
//    
//    UIButton *btn2=[UIButton buttonWithType:0];
//    [btn2 setTitle:@"2" forState:UIControlStateNormal];
//    btn2.frame=CGRectMake(70, 20, 30, 40);
//[btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self addSubview:btn2];
//    
//    UIButton *btn3=[UIButton buttonWithType:0];
//    [btn3 setTitle:@"3" forState:UIControlStateNormal];
//    btn3.frame=CGRectMake(100, 20, 30, 40);
//[btn3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self addSubview:btn3];
//
//
    
    
    
    
}





@end
