//
//  Person.m
//  SimpleDateinit
//
//  Created by scjy on 15/12/8.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "Person.h"

@implementation Person
//解码
- (id)initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    if (self) {
        [aDecoder decodeObjectForKey:@"name"];
        [aDecoder decodeObjectForKey:@"age"];
        [aDecoder decodeObjectForKey:@"hobby"];
        [aDecoder decodeObjectForKey:@"gendar"];
        
        
    }
    return self;
    
}
//编码
- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.gendar forKey:@"gendar"];
    [aCoder encodeObject:self.hobby forKey:@"hobby"];
    [aCoder encodeObject:self.age forKey:@"age"];
}





@end
