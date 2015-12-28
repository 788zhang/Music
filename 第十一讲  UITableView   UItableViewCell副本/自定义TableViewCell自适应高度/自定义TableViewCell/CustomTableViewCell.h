//
//  CustomTableViewCell.h
//  自定义TableViewCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarDateModel.h"
@interface CustomTableViewCell : UITableViewCell
//在view中创建model的属性
@property(nonatomic, retain) CarDateModel *model;
//定义一个类方法，在外部调用，通过传入model参数，计算出来每个cell的高度
+(CGFloat)getCellHeightWithDateModel:(CarDateModel *)carDateModel;


@end
