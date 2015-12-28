//
//  LTView.m
//  UI-LTView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "LTView.h"

//宏定义不能加分号
#define Kweight  self.frame.size.width
#define Kheight  self.frame.size.height
@implementation LTView

@synthesize lable=_lable;
@synthesize textField=_textField;
/*
//instancetype和id的区别：
相同点
都是方法的返回值类型。可以代表任意类型
不同点
1.instancetype  可以返回和方法所在类相同类型的对象 （instancetype  会告诉编译器当前类的类型（名字））
 id  只是返回未知类型的对象

 2.instancetype  只能作为方法的返回值，id还可以作为参数（for id obj in  xxx）
 
 
 3.对于init方法来说，id和instancetype 其实没有区别，因为编译器会把id优化成instancetype
 
 4.用instancetype的好处，确定对象类型，帮助编译器更好的定位代码问题
*/



//重写init方法，在初始化 LTView的时候会执行子类自己的init方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
       if (self) {
        [self loadingCustomView];
    
    }
    return self;
}


//属性需要释放
-(void)dealloc{
    
    [_lable release];
    [_textField release];
    [super dealloc];
    
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    NSLog(@"0000");
    return YES;
    
    
}
-(void)loadingCustomView{
    
    
    self.backgroundColor=[UIColor redColor];
    self.lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, Kweight * 0.25, Kheight)];
    //self.lable==_lable;
    _textField=[[UITextField alloc]initWithFrame:CGRectMake(Kweight / 4, 0, Kweight * 0.75, Kheight)];
    self.lable.textAlignment=NSTextAlignmentCenter;
    self.textField.textAlignment=NSTextAlignmentCenter;
   
    
    //
    self.textField.delegate=self;
    NSLog(@"11");
    
      //self  本身代之LTView
    [self addSubview: self.lable];
    [self addSubview:_textField];

    [_lable release];
    [_textField release];

    
    
}



//-(LTView *)initWithLableViewName:(UILabel *)lable andTextViewName:(UITextField *)textFile{
//    
//    self=[super init];
//    
//    if (self) {
//        _lable=lable;
//        _textField=textFile;
//    }
//    
//    
//    
//    return self;
//}




//- (void)setLable:(UILabel *)lable{
//    
//    _lable.textAlignment=NSTextAlignmentCenter;
//    _lable.textColor=[UIColor redColor];
//    
//    
//}
//
//
//- (void)setTextField:(UITextField *)textField{
//    
//    _textField.textColor=[UIColor redColor];
//    _textField.textAlignment=NSTextAlignmentCenter;
//    _textField.borderStyle=UITextBorderStyleRoundedRect;
//}
//








@end
