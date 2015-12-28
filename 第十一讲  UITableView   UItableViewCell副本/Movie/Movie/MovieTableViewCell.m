//
//  MovieTableViewCell.m
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MovieTableViewCell.h"
#define kwidth  [UIScreen mainScreen].bounds.size.width
@interface MovieTableViewCell ()


@end



@implementation MovieTableViewCell
/* 功能介绍
 展示影院名称，影院位置，影院联系方式
 cell根据影院位置自适应高度。
 
 **/



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self CustomView];
    }
    
    return self;
}


-(void)CustomView{
    
    
    
    self.movieimageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kwidth/4, kwidth/3)];
    [self addSubview:self.movieimageview];
    
    
    self.nameLabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/4, 0, kwidth*0.75, kwidth/4/4)];
    self.nameLabel.font=[UIFont systemFontOfSize:24];
    self.nameLabel.numberOfLines=0;
    [self addSubview:self.nameLabel];
    
    
    self.contenLabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth/4, kwidth/4/4, kwidth*0.48, kwidth/4*0.75)];
    
    self.contenLabel.numberOfLines=0;
    [self addSubview:self.contenLabel];
    
    
    self.watchCountLabel=[[UILabel alloc]initWithFrame:CGRectMake(kwidth*3/4,0 , kwidth*0.25, kwidth/4)];
    
    self.watchCountLabel.textColor=[UIColor redColor];
    [self addSubview:self.watchCountLabel];
    
    
    self.sellBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    
    self.sellBtn.frame=CGRectMake(kwidth*3/4, kwidth*0.22, 66, 44);
    self.sellBtn.backgroundColor=[UIColor redColor];
    [self.sellBtn setTitle:@"购票" forState:UIControlStateNormal];
    
    [self.sellBtn setTintColor:[UIColor blueColor]];
    
    [self addSubview:self.sellBtn];
    
    
    
    
}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
