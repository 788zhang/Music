//
//  MovieTableViewCell.h
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDateModel.h"
@interface MovieTableViewCell : UITableViewCell
//cell 的控件
@property(nonatomic, retain) UIImageView *movieimageview;
@property(nonatomic, retain) UILabel *nameLabel;
@property(nonatomic, retain) UILabel *contenLabel;
@property(nonatomic, retain) UILabel *timeLabel;
@property(nonatomic, retain) UILabel *watchCountLabel;
@property(nonatomic, retain) UIButton *sellBtn;
@property(nonatomic, retain) MovieDateModel *model;




@end
