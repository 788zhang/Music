//
//  PoemTableViewCell.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "PoemTableViewCell.h"
#define kwidth [UIScreen mainScreen].bounds.size.width
@implementation PoemTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
       
        [self.contentView addSubview:self.label];
        
    }
    
    
    return self;
}


- (UILabel *)label{
    
    
    
    if (_label == nil) {
        self.label=[[UILabel alloc]initWithFrame:CGRectMake(20, 0,kwidth ,44)];
        
    }
    return _label;
    
}







- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
