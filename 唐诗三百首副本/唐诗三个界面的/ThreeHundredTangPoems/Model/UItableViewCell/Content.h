//
//  Content.h
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentModel.h"
@interface Content : UITextView<UITextViewDelegate>
@property(nonatomic, retain) ContentModel *model;
@property(nonatomic, retain) UITextView *label;

@property(nonatomic, assign) CGFloat height;



@end
