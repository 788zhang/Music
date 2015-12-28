//
//  MagoView.h
//  UITargetAndAction
//
//  Created by scjy on 15/11/24.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MagoView : UIView


//向外部公开接口，传入目标和动作
-(void)addTarget:(id)target action:(SEL)action;


@end
