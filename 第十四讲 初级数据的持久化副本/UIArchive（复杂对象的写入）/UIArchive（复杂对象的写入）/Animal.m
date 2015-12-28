//
//  Animal.m
//  UIArchive（复杂对象的写入）
//
//  Created by scjy on 15/12/17.
//  Copyright © 2015年 张鹏飞. All rights reserved.
//

#import "Animal.h"

@implementation Animal
//将nsdate类型数据对象转换成Animal对象执行此方法，叫做反归档或者反序列化
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self=[super init];
    if (self) {
        
        
        //创建一个新的Animal，通过反归档初始化属性
        
    self.name=[aDecoder decodeObjectForKey:@"name"];
    self.gender=[aDecoder decodeObjectForKey:@"gender"];
    self.age=[aDecoder decodeObjectForKey:@"age"];
    self.weight=[aDecoder decodeObjectForKey:@"weight"];
        
        
        
        
    }
    
    
    
    
    return self;
}
//encode是把什么编写成计算机语言
//将Animal对象转换成NSDate类型是执行此方法，叫做归档或者序列化
- (void)encodeWithCoder:(NSCoder *)aCoder{
    //对animal  对象中 想要进行归档操作的所有属性进行编码操作，序列化
    
    //encodeObject  归档的属性
    //forKey:归档后的名字
    [aCoder  encodeObject:self.name forKey:@"name"];
    
    [aCoder encodeObject:self.gender forKey:@"gender"];
    
    [aCoder encodeObject:self.age forKey:@"age"];
    
    [aCoder encodeObject:self.weight forKey:@"weight"];
    
    
}

- (void)dealloc{
    
    
    [_name release], _name =nil;
    [_age release], _age =nil;
    [_gender release], _gender =nil;
    [_weight release], _weight =nil;
    
    
    
    [super dealloc];
    
}


@end
