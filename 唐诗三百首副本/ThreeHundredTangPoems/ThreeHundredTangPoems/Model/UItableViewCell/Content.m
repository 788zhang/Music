//
//  Content.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "Content.h"
#define kwidth  [UIScreen mainScreen].bounds.size.width
#define kheight  [UIScreen mainScreen].bounds.size.height
@implementation Content

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self  CustomView];
    }
    return self;
}
-(void)CustomView{
    
    
    
    self.label=[[UITextView alloc]initWithFrame:CGRectMake(20, 0,kwidth-40,kheight)];
    
    
    self.label.delegate=self;
     self.label.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"3.jpg"]];
    self.label.font=[UIFont systemFontOfSize:24];
    
    self.label.textColor=[UIColor redColor];
       self.label.contentSize=CGSizeMake(kwidth,self.height);
    self.label.editable=NO;
    //self.label.backgroundColor=[UIColor redColor];
    
       [self addSubview:self.label];
    
    
}

- (void)setModel:(ContentModel *)model{
    
   self.height=[[self class]getContentHeight:model.content];
    
    
    
    
    
    self.label.text=model.content;
    
    
}







+ (CGFloat)getContentHeight:(NSString *)content{
    
    CGRect ContentRect=[content boundingRectWithSize:CGSizeMake(kwidth, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:24]} context:nil];
    
    
    return ContentRect.size.height;
}








@end
