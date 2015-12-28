//
//  TapGesture.m
//  GestureRecognizer
//
//  Created by scjy on 15/11/23.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "TapGesture.h"

@interface TapGesture ()
{
    UIImageView *imageview;
    UIImageView *imageview1;
    UIImageView *imageview2;
    UIImageView *imageview3;
}

@end


@implementation TapGesture

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self topgesture];
    }
    return self;
}


-(void)topgesture{
    imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"20.png"]];
    imageview.frame=CGRectMake(40, 20, 150, 190);
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer
    alloc]initWithTarget:self action:@selector(tapGesture:)];//（括号内不能加分号）
    
    
    tap.delegate=self;
    

    imageview.userInteractionEnabled=YES;
    [imageview addGestureRecognizer:tap];
    [self addSubview:imageview];
    
    
    
    imageview2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"20.png"]];
    imageview2.frame=CGRectMake(40, 240, 150, 190);
    UIPanGestureRecognizer *panGesture=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
   panGesture.delegate=self;
    imageview2.userInteractionEnabled=YES;
    [imageview2 addGestureRecognizer:panGesture];
    [self addSubview:imageview2];
    
    
    imageview3=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"20.png"]];
    imageview3.frame=CGRectMake(40, 470, 150, 190);
    UIPinchGestureRecognizer *pinch=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
    
   pinch.delegate=self;
    imageview.userInteractionEnabled=YES;
    [imageview3 addGestureRecognizer:pinch];
    [self addSubview:imageview3];
    
    [self setUserInteractionEnabled:YES];
    
}



- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    
    
    return YES;
}




-(void)tapGesture:(UITapGestureRecognizer *)tap{
    //只能旋转一次
    //imageview.transform=CGAffineTransformMakeRotation(M_PI_4);
    //可以在原来基础上继续旋转
    imageview.transform=CGAffineTransformRotate(imageview.transform, M_PI_4);
    imageview2.transform=CGAffineTransformRotate(imageview.transform, M_PI_4);
    imageview3.transform=CGAffineTransformRotate(imageview.transform, M_PI_4);

}

-(void)pan:(UIPanGestureRecognizer *)pan{
    
    CGPoint translationpan=[pan translationInView:imageview2];
    pan.view.center=CGPointMake(pan.view.center.x+translationpan.x, pan.view.center.y+translationpan.y);
    
    [pan setTranslation:CGPointZero inView:self];
}


-(void)pinch:(UIPinchGestureRecognizer *)pinch{
    
    pinch.view.transform=CGAffineTransformScale(pinch.view.transform, pinch.scale,pinch.scale);
    
    pinch.scale=1;
    
}


@end
