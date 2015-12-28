//
//  MagoView.m
//  Responder
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MagoView.h"
@implementation MagoView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self responder];
    }
    return self;
}

-(void)responder{
    
    UIView  *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 100)];
    view.backgroundColor=[UIColor yellowColor];
    [self addSubview:view];
    
    
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0,200, 375, 400)];
    view1.backgroundColor=[UIColor orangeColor];
    [self addSubview:view1];
    
    
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(40, 50, 300, 100)];
    view2.backgroundColor=[UIColor purpleColor];
    view2.userInteractionEnabled=NO;
    [view1 addSubview:view2];
    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(40,200,300, 100)];
    
    //用户交互是否可用， imageview  默认是no
    //view3.userInteractionEnabled=NO;
    view3.backgroundColor=[UIColor grayColor];
    [view1 addSubview:view3];

    [view release];
    [view1 release];
    [view2 release];
    [view3 release];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(30, 40, 60, 20);
    [btn setTitle:@"Touch" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    [view3 addSubview:btn];
    
    /**
    //响应者链
    屏幕  uiapplication - uiwindow -magoView- view- view1- view2-view3-button
     当响应者链中，某一个环节用户交互失败的时候，某子视图的用户交互也不可用
    
   ***/
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
//    UITouch *touch=[touches anyObject];
//    CGPoint a=[touch locationInView:self];
//    NSLog(@"%@",NSStringFromCGPoint(a));
//   
    
    
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    
}


-(void)touch{
    NSLog(@"hahahhahahahhahha...");
    
    
}


@end
