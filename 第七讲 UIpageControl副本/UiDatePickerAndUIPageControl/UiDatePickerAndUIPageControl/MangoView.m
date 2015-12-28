//
//  MangoView.m
//  UiDatePickerAndUIPageControl
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"
#define kwidth self.frame.size.width
#define kheight  self.frame.size.height
@interface MangoView()
@property(nonatomic, retain)  UIScrollView *scrollview;
@end

@implementation MangoView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadingCustomView];
    }
    return self;
}


-(void)loadingCustomView{
    
   self.scrollview=[[UIScrollView alloc]initWithFrame:self.frame];
    
    self.scrollview.bounces=NO;
    self.scrollview.backgroundColor=[UIColor redColor];
    self.scrollview.showsHorizontalScrollIndicator=YES;
   
    self.scrollview.contentSize=CGSizeMake(kwidth*7, kheight);
    [self addSubview:self.scrollview];
    
    
    
    for (int i=0; i<7; i++) {
        
        UIScrollView *scorollview=[[UIScrollView alloc]initWithFrame:CGRectMake(kwidth * i, 0, kwidth, kheight)];
        
        //最少缩小比例
        scorollview.minimumZoomScale=0.5;
        //最大放大比例
        scorollview.maximumZoomScale=2;
        
        UIImageView *imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]]];
        
        imageview.frame=CGRectMake(0, 0, kwidth, kheight);
        
        imageview.tag=110;
        [scorollview addSubview:imageview];
        
        
        
        
        [self.scrollview addSubview:scorollview];
       
        
    }
    
    
    
    
    
    
    
    
    
}
@end
