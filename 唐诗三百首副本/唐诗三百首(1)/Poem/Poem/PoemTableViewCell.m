//
//  PoemTableViewCell.m
//  Poem
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import "PoemTableViewCell.h"
#define kWidth  [UIScreen mainScreen].bounds.size.width
@interface PoemTableViewCell ()


@end


@implementation PoemTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self loadingCustomView];
    }
    return self;
    
}


-(void)loadingCustomView{
    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, kWidth, 44)];
    
    [self.contentView addSubview:self.nameLabel];
}

- (void)setModal:(PoemModal *)modal{
    self.nameLabel.text = modal.poemName;
    self.nameLabel.numberOfLines = 0;
}

+ (CGFloat)getTextHeightWithText:(NSString *)name{
    CGRect textRect = [name boundingRectWithSize:CGSizeMake(kWidth, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18]} context:nil];
    return textRect.size.height;
}

+ (CGFloat)getCellHeightWithPoemModal:(PoemModal *)poemModal{
    CGFloat textHeight = [[self class]getTextHeightWithText:poemModal.poemName];
    return textHeight+kWidth/4;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
