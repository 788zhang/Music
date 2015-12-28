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
    
    
    
    self.carNameLabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/4, 5, Kwidth*0.75, Kwidth/4/4)];
    
    self.carNameLabel.numberOfLines=0;
    self.carNameLabel.textAlignment=NSTextAlignmentLeft;
    //self.carNameLabel.font=[UIFont systemFontOfSize:44];
    //self.carNameLabel.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.carNameLabel];
    [self.carNameLabel release];
    
    
    
    //车的介绍
    
    self.carInfoLabel=[[UILabel alloc]initWithFrame:CGRectMake(Kwidth/4, Kwidth/4/4+10, Kwidth*0.75, Kwidth/4*0.75)];
    self.carInfoLabel.numberOfLines=0;
    self.carInfoLabel.font=[UIFont systemFontOfSize:15];
    
    [self.contentView addSubview:self.carInfoLabel];
    [self.carInfoLabel release];
    
}
//重写属性model的setter方法
- (void)setModel:(CarDateModel *)model{
    
    self.carNameLabel.text=model.carName;
    
    //在拿到品牌介绍文字之后计算出文字的高度，设置label的高度
    
    CGFloat height=[[self class] getTextHeight:model.carIntroduce];
    
    //取出原来label的frame
    CGRect frame=self.carInfoLabel.frame;
    //把新的label高度赋值给frame
    frame.size.height=height;
    
    //把新的frame赋值给原来的label的frame
    self.carInfoLabel.frame=frame;
    
   
    
    self.carInfoLabel.text=model.carIntroduce;
    //车型图片
    self.carImageView.image=[UIImage imageNamed:model.carImage];
    
       
}

#pragma mark -----类方法
//获取整个cell的高度，车名label的高度+品牌介绍label的高度
+ (CGFloat)getCellHeightWithDateModel:(CarDateModel *)carDateModel{
    
    //不能加  *  号
    CGFloat textHeight=[[self class] getTextHeight:carDateModel.carIntroduce];
    return textHeight+Kwidth/4/4+15;
}



//根据文本的内容获取文本的高度
+ (CGFloat)getTextHeight:(NSString *)carIntroduce{
    //计算文本高度的核心方法
    //boundingRectWithSize,当获取指定文字高度的时候需要指定一个CGSize类型的参数，需要让文字在这个限定的宽度和高度内显示，通常宽度和你要显示的label的宽度保持一致，高度尽可能的设置高一点
    
    //options: 是文字显示的方式
    //attributes:设置文字相关的一些属性,字体大小要和之前设置的一样
    //context： 文本绘制上下文，一般不需要设置，直接写nil
    CGRect textRect=[carIntroduce boundingRectWithSize:CGSizeMake(Kwidth*0.75, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    
    return textRect.size.height;
    
}

- (void)awakeFromNib {
    // Initialization code
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
