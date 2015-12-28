//
//  ContentModel.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ContentModel.h"
#import "MainViewController.h"
@implementation ContentModel


- (instancetype)initWithDictionary:(NSDictionary *)dic addKey:(NSString *)key{
    
    
    self=[super init];
    
    if (self) {
        _content=dic[key];
    }

    
    return self;
    
}



- (void)getWithAddKey:(NSString *)key addDictionary:(NSDictionary *)dic addModel:(void (^)(ContentModel *contentModel))contentmodel{
    
    ContentModel *model=[[ContentModel alloc]initWithDictionary:dic addKey:key];
    
    contentmodel(model);
    
    
}




@end
