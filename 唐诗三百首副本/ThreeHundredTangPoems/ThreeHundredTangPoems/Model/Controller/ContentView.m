//
//  ContentView.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self CustomView];
    }
    return self;
}

-(void)CustomView{
    
    self.label=[[UILabel alloc]initWithFrame:CGRectMake(0, 66, self.frame.size.width, self.frame.size.height)];
    
    self.label.backgroundColor=[UIColor redColor];
    self.label.numberOfLines=0;
    [self addSubview:self.label];
    
    
    
    
    
    
}


- (void)setModel:(ContentModel *)model{
    
    
    
    self.label.text=model.content;
    
    //NSLog(@"%@",self.label.text);
}

@end
