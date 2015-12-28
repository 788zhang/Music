//
//  ContentModel.h
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface ContentModel : NSObject

@property(nonatomic, retain) NSString *content;
@property(nonatomic, retain) NSString *index;


- (void)getWithAddKey:(NSString *)key addDictionary:(NSDictionary *)dic addModel:(void (^)(ContentModel *contenModel))Contentmodel;


@end
