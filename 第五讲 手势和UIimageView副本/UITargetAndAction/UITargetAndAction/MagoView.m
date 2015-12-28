//
//  MagoView.m
//  UITargetAndAction
//
//  Created by scjy on 15/11/24.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MagoView.h"

@interface MagoView ()
{
    id _target;// 目标 将要执行动作的对象
    SEL _action;// 动作  目标对象将要执行的操作
   
}

@end




@implementation MagoView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadingView];
    }
    return self;
}




-(void)loadingView{
    
    
    
}

-(void)addTarget:(id)target action:(SEL)action{
    //把外部传递过来的target和action赋值给Mangoview自身的动作和目标的实际变量
    _target=target;
    _action=action;
    
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //当点击之后我们需要让目标去执行对应动作
    [_target performSelector:_action];
    
    
}



@end
