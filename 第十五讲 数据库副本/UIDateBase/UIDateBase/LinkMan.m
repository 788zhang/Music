//
//  LinkMan.m
//  UIDateBase
//
//  Created by scjy on 15/12/18.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "LinkMan.h"

@implementation LinkMan

- (instancetype)initWithName:(NSString *)name
                 andPhoneNumber:(NSString *)phonenumber
                         gender:(NSString *)gender
                            age:(NSInteger)age
                        remarks:(NSString *)remarks{
    
    
    self=[super self];
    if (self) {
        
        
        _name=name;
        _phonenumber=phonenumber;
        _gender=gender;
        _age=age;
        _Remarks=remarks;
        
        
        
        
    }
    
    
    
    return self;
    
}






+ (instancetype)linkManWithName:(NSString *)name
                 andPhoneNumber:(NSString *)phonenumber
                         gender:(NSString *)gender
                            age:(NSInteger)age
                        remarks:(NSString *)remarks{
    
    
    LinkMan *linkman=[[[LinkMan alloc]initWithName:name andPhoneNumber:phonenumber gender:gender age:age remarks:remarks]autorelease];
    
    
    return linkman;
    
}




-(void)dealloc{
    
    [_name release]; _name = nil;
    [_phonenumber release]; _phonenumber = nil;
    [_gender release]; _gender = nil;
    [_Remarks release]; _Remarks = nil;
    
    
    
    
    
    [super dealloc];
}






@end
