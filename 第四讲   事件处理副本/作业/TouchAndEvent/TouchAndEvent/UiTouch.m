//
//  UiTouch.m
//  TouchAndEvent
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "UiTouch.h"
@implementation UiTouch

//自定义view，实现点击事件。
//不同的实例，点击效果不同：点击视图改变颜色、点击视图改变位置，点击视图修改大小。
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self touch];
    }
    return self;
}
-(void)touch{
    
    _view1=[[UIView alloc]initWithFrame:CGRectMake(20, 30, 300, 200)];
    _view1.backgroundColor=[UIColor yellowColor];
    [self addSubview:_view1];
    
    _view2=[[UIView alloc]initWithFrame:CGRectMake(20, 250, 300, 200)];
    _view2.backgroundColor=[UIColor grayColor];
    [self addSubview:_view2];

   
    _view3=[[UIView alloc]initWithFrame:CGRectMake(20, 460, 300, 200)];
    _view3.backgroundColor=[UIColor redColor];
    [self addSubview:_view3];
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *starttouch=[touches anyObject];
    _startpoint=[starttouch locationInView:_view2];
    
    _view1.backgroundColor=[UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0];
    
    
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    _view3.frame=CGRectMake(20,460, arc4random()%300, arc4random()%150);
    
    
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *movetouch=[touches anyObject];
    CGPoint movepoint=[movetouch locationInView:_view2];
    NSInteger offsetx=movepoint.x-_startpoint.x;
    NSInteger offsety=movepoint.y-_startpoint.y;
    _view2.center=CGPointMake(_view2.center.x+offsetx,_view2.center.y+offsety);
    
    
    
}

@end
