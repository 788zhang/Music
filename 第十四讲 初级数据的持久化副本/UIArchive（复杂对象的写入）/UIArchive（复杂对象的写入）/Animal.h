//
//  Animal.h
//  UIArchive（复杂对象的写入）
//
//  Created by scjy on 15/12/17.
//  Copyright © 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject<NSCoding>
//定义属性

@property(nonatomic, copy) NSString *name;//名字
@property(nonatomic, copy) NSString *gender;//性别
@property(nonatomic, copy) NSString *age;//年龄
@property(nonatomic, copy) NSString *weight;//体重



@end
