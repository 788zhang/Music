//
//  ColorModel.h
//  UIBlockCallBack
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
//导入系统类用尖括号<>
#import <UIKit/UIColor.h>



typedef void(^responseColor)(UIColor *willSetColor);


@interface ColorModel : NSObject

////把参数类型定义成block类型colorBlock是一个有参数无返回值的block。。。void(^)(UIColor *willSetColor)
//-(void)getViewColorWithColorBlock:(void(^)(UIColor *willSetColor))colorBlock;
//


-(void)getViewColorWithColorBlock:(responseColor)colorBlock;




@end
