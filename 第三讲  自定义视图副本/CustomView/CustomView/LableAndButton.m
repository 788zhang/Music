//
//  LableAndButton.m
//  CustomView
//
//  Created by scjy on 15/11/22.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "LableAndButton.h"

@implementation LableAndButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        [self newView];
    }
    return self;
}






-(void)newView{
    
    _lable=[[UILabel alloc]initWithFrame:CGRectMake(20, 220, 40, 30)];
    _lable.textAlignment=NSTextAlignmentCenter;
    _lable.textColor=[UIColor redColor];
    
    
    _textField=[[UITextField alloc]initWithFrame:CGRectMake(70, 220, 120, 30)];
    _textField.textAlignment=NSTextAlignmentCenter;
    
    
    
    [self addSubview:_lable];
    [self addSubview:_textField];
    
    
    
    
}





@end
