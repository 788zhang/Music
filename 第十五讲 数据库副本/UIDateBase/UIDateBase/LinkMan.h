//
//  LinkMan.h
//  UIDateBase
//
//  Created by scjy on 15/12/18.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkMan : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *phonenumber;
@property(nonatomic, copy) NSString *gender;
@property(nonatomic, assign) NSInteger age;
@property(nonatomic, copy) NSString *Remarks;//备注

+(instancetype)linkManWithName:(NSString *)name andPhoneNumber:(NSString *)phonenumber gender:(NSString *)gender age:(NSInteger)age remarks:(NSString *)remarks;

@end
