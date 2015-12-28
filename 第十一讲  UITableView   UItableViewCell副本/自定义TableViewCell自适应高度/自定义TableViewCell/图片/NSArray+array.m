//
//  NSArray+array.m
//  Classofexpansion
//
//  Created by scjy on 15/11/11.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "NSArray+array.h"

@implementation NSArray (array)
//self.count  数组的元素个数
//给数组扩展输出字符串类型
-(NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *str=[NSMutableString stringWithFormat:@"%lu(\n",(unsigned long)self.count];
    for (id obj in self) {
        //  /t缩进4格
        [str appendFormat:@"%@,\n",obj];
        [str appendFormat:@")"];
    }
    
    return str;
}

-(void)printfArrayCount{
    NSLog(@"当前元素个数为%lu",self.count);
    
    
}


@end
