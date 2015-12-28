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
@property(nonatomic ,retain) NSString *moveWatchCount;
@property(nonatomic, retain) NSString *movePicName;



-(instancetype)initWithDictionary:(NSDictionary *)dic;



@end
