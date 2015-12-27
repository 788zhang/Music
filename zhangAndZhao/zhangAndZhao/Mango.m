//
//  Mango.m
//  zhangAndZhao
//
//  Created by scjy on 15/12/27.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "Mango.h"

@interface Mango ()

@property(nonatomic, retain) UILabel *lable;




@end


@implementation Mango

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self CustomView];
    }
    return self;
}





-(void)CustomView{
    
    
    self.backgroundColor=[UIColor redColor];
    
    
    
    self.lable=[[UILabel alloc]initWithFrame:CGRectMake(30, 100, 300, 44) ];
    
    
    
    
    self.backgroundColor=[UIColor blueColor];
    self.lable.text=@"张鹏飞";
    
    [self addSubview:self.lable];
    
    
    
    
    
}



@end
