//
//  ColorModel.m
//  UIBlockCallBack
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ColorModel.h"

@implementation ColorModel


//- (void)getViewColorWithColorBlock:(void (^)(UIColor *))colorBlock{
//    
//    //随机颜色
//    UIColor *willSetColor=[UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0];
//    
//   //block调用
//    colorBlock(willSetColor);
//    
//}
//

- (void)getViewColorWithColorBlock:(responseColor)colorBlock{
    
    //随机颜色
    UIColor *willSetColor=[UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0];
    
    colorBlock(willSetColor);
    
    
}



@end
