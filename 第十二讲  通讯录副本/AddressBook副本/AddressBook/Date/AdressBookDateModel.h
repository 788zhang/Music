//
//  AdressBookDateModel.h
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdressBookDateModel : NSObject
@property(nonatomic, retain) NSString *imageName;
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *tel;
@property(nonatomic, retain) NSString *gendar;
@property(nonatomic, retain) NSString *age;
@property(nonatomic, retain) NSString *hobby;

-(instancetype)initWithDictionary:(NSDictionary *)dic;
+(instancetype)adressBookDatemodelName:(NSString *)name addtel:(NSString *)tel gender:(NSString *)gender addAge:(NSString *)age andhobby:(NSString *)hobby andImageName:(NSString *)imageName;

@end
