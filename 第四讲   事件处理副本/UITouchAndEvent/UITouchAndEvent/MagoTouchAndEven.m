//
//  MagoTouchAndEven.m
//  UITouchAndEvent
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MagoTouchAndEven.h"
//延展
@interface MagoTouchAndEven (){
    //成员变量，（全局变量）
    
    UIView *view;
    CGPoint startpoint;
    
}
//全局变量  和属性的区别  
//@property(nonatomic, retain) UIView *view;

@end


@implementation MagoTouchAndEven

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self touchAndEvent];
    }
    return self;
}


-(void)touchAndEvent{
    
    self.backgroundColor=[UIColor yellowColor];
    view=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 40, 40)];
    view.backgroundColor=[UIColor redColor];
    [self addSubview:view];
    [view release];
    }



//触摸事件


//当点击的时候，调用
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //从触摸手势集合里取出任意一个触摸点
    UITouch *touch=[touches anyObject];
    
    
    //通过触摸点在当前视图上的位置返回当前点的坐标
    startpoint=[touch locationInView:view];
    
   
    NSLog(@"%@",NSStringFromCGPoint(startpoint));
////    NSLog(@"%f  %f",a.x,a.y);
    NSLog(@"%s",__FUNCTION__);
    
}
//触摸移动方法，当手指在屏幕上移动的时候就会调用
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    //跟随手势的移动一起移动
//    UITouch *movetouch=[touches anyObject];
//    CGPoint movepoint=[movetouch locationInView:view];
//    NSLog(@"%@",NSStringFromCGPoint(movepoint));
//    NSInteger offsetx=movepoint.x-startpoint.x;
//    NSInteger offsety=movepoint.y-startpoint.y;
//    view.center=CGPointMake(view.center.x+offsetx, view.center.y+offsety);
    
    
    
    
    
    //abort();//程序崩溃
    NSLog(@"%s",__FUNCTION__);
}
// 触摸终止方法，当上拉控制中心的时候或者来电话等系统级别的事件打断当前触摸的时候触发
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%s",__FUNCTION__);
    
    
}
//当松开的时候就会调用    touches  是点击区域的一个集合，然后再随机取一个，然后就会打出坐标了，哈哈。。。（虽然不太精确，但是，，还是在触摸的区域的）
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //把当前View设置为随机颜色
    //arc4random()%256值的区间（0~255）/255.0f  计算的结果是0~1
    self.backgroundColor=[UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0];
    NSLog(@"%s",__FUNCTION__);
    
    
    //随着手势移动之后在移动
    UITouch *endTouch=[touches anyObject];
    CGPoint point=[endTouch locationInView:view];
    NSLog(@"%@",NSStringFromCGPoint(point));
    NSInteger offsetx=point.x-startpoint.x;
    NSInteger offsety=point.y-startpoint.y;
    view.center=CGPointMake(view.center.x+offsetx, view.center.y+offsety);

    
    
    
    
    
    
}

@end
