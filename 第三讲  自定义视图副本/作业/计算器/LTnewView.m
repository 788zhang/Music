//
//  LTnewView.m
//  HomeView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 芒果iOS. All rights reserved.
//
#define kWidth self.frame.size.width
#define kHeight self.frame.size.height
#import "LTnewView.h"

@implementation LTnewView
@synthesize button1 = _button1;
@synthesize button2 = _button2;
@synthesize button3 = _button3;
@synthesize button4 = _button4;
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self actionView];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//-(void)dealloc{
//    [_button1 release];
//    [_button2 release];
//    [_button3 release];
//    [_button4 release];
//    [super dealloc];
//}
-(void)actionView{
    self.button1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0,kWidth *0.25 , kHeight *0.25)];
    self.button1.backgroundColor = [UIColor lightGrayColor];

    self.button2 = [[UIButton alloc]initWithFrame:CGRectMake(kWidth *0.25 + 2, 0,kWidth *0.25 , kHeight *0.25)];
    self.button2.backgroundColor = [UIColor lightGrayColor];
    self.button3 = [[UIButton alloc]initWithFrame:CGRectMake(kWidth *0.25 * 2 + 4, 0,kWidth *0.25 , kHeight *0.25)];
    self.button3.backgroundColor = [UIColor lightGrayColor];
    
    self.button4 = [[UIButton alloc]initWithFrame:CGRectMake(kWidth *0.25 * 3 + 6, 0,kWidth *0.25 , kHeight *0.25)];
    self.button4.backgroundColor = [UIColor orangeColor];
    
    [self addSubview:self.button1];
    [self addSubview:self.button2];
    [self addSubview:self.button3];
    [self addSubview:self.button4];
//    [self.button1 release];
//    [self.button2 release];
//    [self.button3 release];
//    [self.button4 release];
}
@end
