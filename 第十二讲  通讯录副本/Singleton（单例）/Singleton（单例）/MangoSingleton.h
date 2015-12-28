//
//  MangoSingleton.h
//  Singleton（单例）
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MangoSingleton : NSObject
@property(nonatomic, retain) NSString *inputText;
//第一步：定义单例方法
//单例方法，必须是类方法，返回值是这个类的本身，保证程序中只有一个对象存在
+(MangoSingleton *)sharedInstance;

@end
