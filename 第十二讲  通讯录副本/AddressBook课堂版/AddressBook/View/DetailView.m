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
@property(nonatomic, retain) UILabel *NameLabel;//名字
@property(nonatomic, retain) UILabel *phonenumlabel;//
@property(nonatomic, retain) UILabel *agelabel;
@property(nonatomic, retain) UILabel *gendarlabel;
@property(nonatomic, retain) UILabel *hobbylabel;

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
    
    
    self.ImageView=[[UIImageView alloc]initWithFrame:CGRectMake(80, 80, kwidth-160, kwidth-160)];
    
    self.ImageView.layer.cornerRadius=(kwidth-160)/2;
    self.ImageView.clipsToBounds=YES;
    [self addSubview:self.ImageView];
    
    
    
    
    
    
    self.NameLabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, kwidth-80,kwidth*0.666 , 44)];
   
   

    self.NameLabel.textAlignment=NSTextAlignmentLeft;
    [self addSubview:self.NameLabel];
    
    
    
    self.gendarlabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3+2, kwidth-30, kwidth*0.666, 44)];
    self.gendarlabel.textAlignment=NSTextAlignmentLeft;
   
    [self addSubview:self.gendarlabel];

    
    self.agelabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, kwidth+20, kwidth*0.666, 44)];
    self.agelabel.textAlignment=NSTextAlignmentLeft;
    
    [self addSubview:self.agelabel];
    
    
    
    self.hobbylabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/3, kwidth+70, kwidth*0.666, 44)];
    self.hobbylabel.textAlignment=NSTextAlignmentLeft;

    [self addSubview:self.hobbylabel];
    
    
    
    self.phonenumlabel=[[UILabel alloc]initWithFrame:CGRectMake(30, kwidth+120, kwidth-60, 44)];
    
    self.phonenumlabel.textAlignment=NSTextAlignmentCenter;
    [self addSubview:self.phonenumlabel];
    
    
    
    
}




- (void)setModel:(AdressBookDateModel *)model{
    
    

    self.ImageView.image=[UIImage imageNamed:model.imageName];
    self.agelabel.text=model.age;
    
    self.gendarlabel.text=model.gendar;
    self.hobbylabel.text=model.hobby;
    
    NSString *name=@" 姓名: ";
    self.NameLabel.text=[name stringByAppendingString:model.name];
    NSLog(@"%@",self.NameLabel.text);

    
    NSString *tel=@" 电话: ";
    self.phonenumlabel.text=[tel stringByAppendingString:model.tel];

    NSString *age=@" 年龄: ";
    self.agelabel.text=[age stringByAppendingString:model.age];

    NSString *hobby=@" 爱好:";
    self.hobbylabel.text=[hobby stringByAppendingString:model.hobby];
    
    NSString *gendar=@"性别：" ;
    self.gendarlabel.text=[gendar stringByAppendingString:model.gendar];
    
    
    
}





@end
