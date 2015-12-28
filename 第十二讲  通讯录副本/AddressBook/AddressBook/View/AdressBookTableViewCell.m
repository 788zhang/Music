//
//  AdressBookTableViewCell.m
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AdressBookTableViewCell.h"

#import "DetailViewController.h"

#define Kwidth   [UIScreen mainScreen].bounds.size.width
@interface AdressBookTableViewCell ()
@property(nonatomic, retain) UIImageView *ImageView;//图片
@property(nonatomic, retain) UILabel *NameLabel;//名字
@property(nonatomic, retain) UILabel *phonenumlabel;//
@property(nonatomic, retain) UILabel *agelabel;
@property(nonatomic, retain) UILabel *gendarlabel;
@property(nonatomic, retain) UILabel *hobbylabel;
@end

@implementation AdressBookTableViewCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self CustomView];
    }
    
    return self;
}


-(void)CustomView{
    
    self.ImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,Kwidth/6, Kwidth/6)];
    
    self.ImageView.layer.cornerRadius=Kwidth/6/2;
   self.ImageView.clipsToBounds=YES;
    
    
    self.ImageView.userInteractionEnabled=YES;
    
       
    
    
    
    
    [self.contentView  addSubview:self.ImageView];
   
    self.NameLabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/6+10, Kwidth/5/2-20,Kwidth/6, 44)];
    
    [self.contentView addSubview:self.NameLabel];
    
    self.phonenumlabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/3+10, Kwidth/5/2-20, Kwidth/3+60, 44)];
    [self.contentView addSubview:self.phonenumlabel];
    
    
    
}















- (void)setModel:(AdressBookDateModel *)model{
    
   // NSLog(@"%@",model.name);
    self.NameLabel.text=model.name;
   
    self.ImageView.image=[UIImage imageNamed:model.imageName];
    self.agelabel.text=model.age;
    self.gendarlabel.text=model.gendar;
    self.hobbylabel.text=model.hobby;
    
    NSString *str=@"电话:";
    self.phonenumlabel.text=[str stringByAppendingString:model.tel];
    
}





- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
