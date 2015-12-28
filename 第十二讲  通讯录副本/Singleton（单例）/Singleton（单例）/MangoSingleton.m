//
//  MangoSingleton.m
//  Singleton（单例）
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoSingleton.h"

@implementation MangoSingleton


//第二步：静态单例类的实例，并初始化为nil，
static MangoSingleton *mango=nil;


//第三步：实例构造检查，检查静态实例对象是否为空

+ (MangoSingleton *)sharedInstance{
    
    //第四步:如果静态实例为空，创建一个新对象
    if (mango == nil) {
        mango =[[MangoSingleton alloc]init];
    }
    
    return mango;
}

@end
