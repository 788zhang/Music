//
//  CustomTableViewCell.m
//  自定义TableViewCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "CustomTableViewCell.h"
#define Kwidth   [UIScreen mainScreen].bounds.size.width

#define Kheight  [UIScreen mainScreen].bounds.size.height



//创建私有的属性
@interface CustomTableViewCell ()
@property(nonatomic, retain) UIImageView *carImageView;//车标
@property(nonatomic, retain) UILabel *carNameLabel;//车名
@property(nonatomic, retain) UILabel *carInfoLabel;//车的介绍



@end


@implementation CustomTableViewCell




-(void)dealloc{
    
    [_carImageView release],_carImageView =nil;
    [_carInfoLabel release], _carInfoLabel=nil;
    [_carNameLabel release], _carNameLabel=nil;
    
    
    [super dealloc];
}



//重写cell的initWithStyle方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //inser  code....
        
        [self CustomView];
        
        
    }
    
    return  self;
    
}


-(void)CustomView{
    
     
    
    
    //车型图片
    self.carImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,Kwidth/4, Kwidth/4)];
    
    
    [self.contentView  addSubview:self.carImageView];
    [self.carImageView release];
    
    //车的名字
    
    
    
    self.carNameLabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/4, 0, Kwidth*0.75, Kwidth/4/4)];
    
    self.carNameLabel.numberOfLines=0;
    self.carNameLabel.textAlignment=NSTextAlignmentLeft;
    //self.carNameLabel.font=[UIFont systemFontOfSize:44];
    //self.carNameLabel.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.carNameLabel];
    [self.carNameLabel release];
    
    
    
    //车的介绍
    
    self.carInfoLabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/4, Kwidth/4/4, Kwidth*0.75, Kwidth/4*0.75)];
    self.carInfoLabel.numberOfLines=0;
    //self.carInfoLabel.backgroundColor=[UIColor blueColor];
    [self.contentView addSubview:self.carInfoLabel];
    [self.carInfoLabel release];
    
}
//重写属性model的setter方法
- (void)setModel:(CarDateModel *)model{
    
    self.carNameLabel.text=model.carName;
    self.carInfoLabel.text=model.carIntroduce;
    self.carImageView.image=[UIImage imageNamed:model.carImage];
}



- (void)awakeFromNib {
    // Initialization code
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
