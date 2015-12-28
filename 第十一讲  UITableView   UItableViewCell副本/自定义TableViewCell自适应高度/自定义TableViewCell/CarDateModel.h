//
//  CarDateModel.h
//  自定义TableViewCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarDateModel : NSObject
//model中的元素要和将要转换的数据模型 元素类型保持一致
@property(nonatomic, retain) NSString *carName;
@property(nonatomic, retain) NSString *carIntroduce;
@property(nonatomic, retain) NSString *carImage;//车标





//定义一个公开的方法，把外部的字典传进来，进行转化加工（字典转换成model）

-(instancetype)initWithDictionary:(NSDictionary *)dic;



@end
