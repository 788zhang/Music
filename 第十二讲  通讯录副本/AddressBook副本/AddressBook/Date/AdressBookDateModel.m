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

- (instancetype)initWithName:(NSString *)name addtel:(NSString *)tel gender:(NSString *)gender addAge:(NSString *)age andhobby:(NSString *)hobby  andImageName:(NSString *)imageName{
    
    self=[super init];
    if (self) {
    
        _name=name;
        _tel=tel;
        _gendar=gender;
        _age=age;
        _hobby=hobby;
        _imageName=imageName;
    
    
    }
    return self;
}


+ (instancetype)adressBookDatemodelName:(NSString *)name addtel:(NSString *)tel gender:(NSString *)gender addAge:(NSString *)age andhobby:(NSString *)hobby andImageName:(NSString *)imageName{
    
    AdressBookDateModel *adress=[[AdressBookDateModel alloc]initWithName:name addtel:tel gender:gender addAge:age andhobby:hobby andImageName:imageName];
    
    
    
    return adress;
    
    
    
}

@end
