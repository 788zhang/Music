//
//  AdressBookDateModel.m
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AdressBookDateModel.h"

@implementation AdressBookDateModel
- (instancetype)initWithDictionary:(NSDictionary *)dic{
    
    self=[super init];
    if (self) {
        self.imageName=dic[@"head_image"];
        self.name=dic[@"name"];
        self.tel=dic[@"phoneNum"];
        self.gendar=dic[@"gender"];
        self.age=dic[@"age"];
        self.hobby=dic[@"hobby"];
    }
    return self;
}



-(void)getModelFromDictionary:(NSDictionary *)dic addModelBlock:(void (^)(AdressBookDateModel *))adressModel{
    
    
    
    AdressBookDateModel *model=[[AdressBookDateModel alloc]initWithDictionary:dic];
    adressModel(model);
    
}














@end
