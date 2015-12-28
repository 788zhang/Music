//
//  PoemTableViewCell.h
//  Poem
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PoemModal.h"

@interface PoemTableViewCell : UITableViewCell
@property(nonatomic,retain)PoemModal *modal;
@property(nonatomic,retain) UILabel *nameLabel;
@end
