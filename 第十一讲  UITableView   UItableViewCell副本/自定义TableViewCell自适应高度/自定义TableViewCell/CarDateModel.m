//
//  CarDateModel.m
//  自定义TableViewCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "CarDateModel.h"

@implementation CarDateModel

-(instancetype)initWithDictionary:(NSDictionary *)dic{
    
    self=[super init];
    if (self) {
        
        //insert code...
    self.carName=dic[@"carName"];
    self.carIntroduce=dic[@"introduce"];
    self.carImage=dic[@"carImage"];
        
        
       
        
    }
    return self;
    
}
- (void)dealloc{
    
    [_carImage release], _carImage=nil;
    [_carIntroduce release],_carIntroduce=nil;
    [_carName release], _carName=nil;
    
    [super dealloc];
}



@end
