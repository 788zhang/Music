//
//  MovieDateModel.m
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MovieDateModel.h"

@implementation MovieDateModel


- (instancetype)initWithName:(NSString *)name addMovieIntroduce:(NSString *)introduce addMoveTime:(NSString *)time addMovieCount:(NSInteger)count addPicname:(NSString *)picname{
    
    self=[super init];
    if (self) {
        _movieName=name;
        _movieIntroduce=introduce;
        _moveWatchCount=count;
        _movePicName=picname;
        
        _moveTime=time;
    }
    
    return self;
}


@end
