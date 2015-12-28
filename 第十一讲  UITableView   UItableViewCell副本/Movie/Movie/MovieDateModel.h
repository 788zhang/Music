//
//  MovieDateModel.h
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieDateModel : NSObject
@property(nonatomic, retain) NSString *movieName;
@property(nonatomic, retain) NSString *movieIntroduce;
@property(nonatomic, retain) NSString *moveTime;
@property(nonatomic ,assign) NSInteger moveWatchCount;
@property(nonatomic, retain) NSString *movePicName;


-(instancetype)initWithName:(NSString *)name addMovieIntroduce:(NSString *)introduce addMoveTime:(NSString *)time addMovieCount:(NSInteger )count addPicname:(NSString *)picname;






@end
