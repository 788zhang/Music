//
//  Person.h
//  SimpleDateinit
//
//  Created by scjy on 15/12/8.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *gendar;
@property(nonatomic, retain) NSString *age;
@property(nonatomic, retain) NSString *hobby;

@end
