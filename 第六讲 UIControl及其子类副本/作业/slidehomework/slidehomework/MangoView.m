//
//  MangoView.m
//  slidehomework
//
//  Created by scjy on 15/11/25.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"
#define kwidth  self.frame.size.width
#define kheight self.frame.size.height


@interface MangoView ()
{
    
    UISlider *slide1;
    UISlider *slide2;
    UISlider *slide3;
    
}

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
    
    /*
     创建3个UISlider对象。用这3个UISlider对象控制self.view.backgroundColor的变化。
     3个UISlider对象分别控制UIColor的red，green，blue。
     滑动任何一个UISlider都会引起背景颜色变化。
     
     */
    slide1=[[UISlider alloc]initWithFrame:CGRectMake(60, kheight*0.2, kwidth-120, 30)];
    
    
    slide1.maximumValue=255;
    slide1.minimumValue=0;
    [slide1 addTarget:self action:@selector(rgb) forControlEvents:UIControlEventValueChanged];
    
    [self addSubview:slide1];
    
    
    
    slide2=[[UISlider alloc]initWithFrame:CGRectMake(60, kheight*0.4, kwidth-120, 30)];
    
    slide2.maximumValue=255;
    slide2.minimumValue=0;
    [slide2 addTarget:self action:@selector(rgb) forControlEvents:UIControlEventValueChanged];
    [self addSubview:slide2];
    
    
    slide3=[[UISlider alloc]initWithFrame:CGRectMake(60, kheight*0.6, kwidth-120, 30)];
    
    slide3.maximumValue=255;
    slide3.minimumValue=0;
    [slide3 addTarget:self action:@selector(rgb) forControlEvents:UIControlEventValueChanged];
    [self addSubview:slide3];
    
    
}

-(void)rgb{
    float red=slide1.value;
     float green=slide2.value;
    float blue=slide3.value;
    
    self.backgroundColor=[UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:1];
    
    
    
}




@end
