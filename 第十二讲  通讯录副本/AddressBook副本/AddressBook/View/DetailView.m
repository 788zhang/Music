//
//  DetailView.m
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "DetailView.h"
#define kwidth  self.frame.size.width
#define kheight  self.frame.size.height
@interface DetailView ()
@property(nonatomic, retain) UIImageView *ImageView;//图片
//@property(nonatomic, retain) UILabel *NameLabel;//名字
@property(nonatomic, retain) UILabel *phonenumlabel;//
@property(nonatomic, retain) UILabel *agelabel;
@property(nonatomic, retain) UILabel *gendarlabel;
@property(nonatomic, retain) UILabel *hobbylabel;

@property(nonatomic, retain) UITextField *name;
@property(nonatomic, retain) UITextField *age;
@property(nonatomic, retain) UITextField *gender;
@property(nonatomic, retain) UITextField *hobby;
@property(nonatomic, retain) UITextField *tel;



@end

@implementation DetailView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self CustomView];
    }
    return self;
}
-(void)CustomView{
    
    
    self.ImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 66, kwidth/3, kheight/4)];
    
    
    [self addSubview:self.ImageView];
    
    
    
    
    
    
    self.NameLabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, 66,45, 44)];
   self.NameLabel.text=@"姓名:";
   

    self.NameLabel.textAlignment=NSTextAlignmentLeft;
    [self addSubview:self.NameLabel];
    
    self.name=[[UITextField alloc]initWithFrame:CGRectMake(kwidth/3+55, 66,kwidth*0.666-100 , 44)];
    
    self.name.borderStyle=UITextBorderStyleRoundedRect;
    self.name.keyboardType=UIKeyboardTypeNamePhonePad;
    
    self.name.userInteractionEnabled=YES;
    
    
    [self addSubview:self.name];
    
    
    
    self.gendarlabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, 100+10, 45, 44)];
    self.gendarlabel.textAlignment=NSTextAlignmentLeft;
    self.gendarlabel.text=@"性别:";
    [self addSubview:self.gendarlabel];
    
    
    
    self.gender=[[UITextField alloc]initWithFrame:CGRectMake(kwidth/3+55, 100+10, kwidth*0.666-100, 44)];

    self.gender.borderStyle=UITextBorderStyleRoundedRect;

    [self addSubview:self.gender];
    
    
    
    
    self.agelabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, 154, 45, 44)];
    self.agelabel.textAlignment=NSTextAlignmentLeft;
    
    self.agelabel.text=@"年龄";
    
    [self addSubview:self.agelabel];
    
    
    self.age=[[UITextField alloc]initWithFrame:CGRectMake(kwidth/3+55, 154, kwidth*0.666-100, 44)];
    
    self.age.borderStyle=UITextBorderStyleRoundedRect;
    
    [self addSubview:self.age];
    
    
    
    
    self.hobbylabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, 198, 45, 44)];
    
    
    self.hobbylabel.text=@"爱好";
    
    [self addSubview:self.hobbylabel];
    
    
    self.hobby=[[UITextField alloc]initWithFrame:CGRectMake(kwidth/3+55, 198, kwidth*0.666-100, 44)];
    
    self.hobby.borderStyle=UITextBorderStyleRoundedRect;
    
    [self addSubview:self.hobby];
    
    
    
    self.phonenumlabel=[[UILabel alloc]initWithFrame:CGRectMake(30, kheight/4+66+50, 66, 44)];
    
    self.phonenumlabel.text=@"电话:";
    
    self.phonenumlabel.textAlignment=NSTextAlignmentCenter;
    [self addSubview:self.phonenumlabel];
    
    self.tel=[[UITextField alloc]initWithFrame:CGRectMake(96, kheight/4+66+50, kwidth*0.666-100, 44)];
    
    self.tel.borderStyle=UITextBorderStyleRoundedRect;
    
    [self addSubview:self.tel];
    
    
}




- (void)setModel:(AdressBookDateModel *)model{
    
    

    self.ImageView.image=[UIImage imageNamed:model.imageName];
    self.age.text=model.age;
    
    self.gender.text=model.gendar;
    self.hobby.text=model.hobby;
    
   
    self.name.text=model.name;
    

    
    
    self.tel.text=model.tel;
   
    
   
    
    
}





@end
