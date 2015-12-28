//
//  MovieDateModel.m
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MovieDateModel.h"

@implementation MovieDateModel





- (instancetype)initWithDictionary:(NSDictionary *)dic{
    
    
    self=[super init];
    if (self) {
        self.movieName=dic[@"MovieName"];
        self.movePicName=dic[@"MovieImageName"];
        self.moveWatchCount=dic[@"MovieWatchCount"];
        self.moveTime=dic[@"MovieTime"];
        self.movieIntroduce=dic[@"MovieIntroduce"];
    }
    
    
    
    return self;
}





@end
