//
//  MangoView.m
//  UIcontrolAndSon
//
//  Created by scjy on 15/11/25.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"


@interface MangoView ()
@property(nonatomic, retain) UISegmentedControl *segmented;
@property(nonatomic, retain) UISlider *slider;
@property(nonatomic, retain) UILabel *label;

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

- (void)dealloc{
    
    [_segmented release];
    [_slider release];
    [_label release];
    [super dealloc];
}


-(void)loadingCustomView{
    
    
    
   self.segmented=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"全部商家",@"优惠商家", nil]];
    self.segmented.frame=CGRectMake(30, 20, self.frame.size.width-60, 40);
    
    //按下之后选中效果会马上消失，no按下效果一直保留，默认是no
    self.segmented.momentary=YES;
    //numberOfSegments，，，分段的个数
    NSLog(@"%ld",(long)self.segmented.numberOfSegments);
    //给某个分段设置标题
    [self.segmented setTitle:@"部分商家" forSegmentAtIndex:1];
    
    
    //在segmented的某一个位置插入一个title分段，animated是否有过度效果
    [self.segmented insertSegmentWithTitle:@"优惠商家" atIndex:1 animated:YES];
    //设置主题颜色
    self.segmented.tintColor=[UIColor redColor];
    //设置某一个分段是否可用，，no  为灰色，不可点击
    [self.segmented setEnabled:YES forSegmentAtIndex:1];
    //给segmented设置方法，
    [self.segmented addTarget:self action:@selector(segmentedAction:) forControlEvents:UIControlEventValueChanged];
       //给某个分段设置图片
    //[self.segmented setImage:[UIImage imageNamed:@"3.jpg"] forSegmentAtIndex:2];
    [self addSubview:self.segmented];
    [self.segmented release];
    
    
    
    self.slider=[[UISlider alloc]initWithFrame:CGRectMake(30, 120,self.frame.size.width-60 , 30)];
    //最大值，最小值
    self.slider.maximumValue=100.0;
    
    self.slider.maximumTrackTintColor=[UIColor redColor];
    
    self.slider.minimumValue=0.0;
     self.slider.minimumTrackTintColor=[UIColor blueColor];
    [self.slider addTarget:self action:@selector(sliderAction) forControlEvents:UIControlEventValueChanged];
    
    
    
    [self addSubview:self.slider];
    
    [self.slider release];
    
    
    _label=[[UILabel alloc]initWithFrame:CGRectMake(30, 180, self.frame.size.width-60,30)];
    _label.backgroundColor=[UIColor yellowColor];
    _label.textAlignment=NSTextAlignmentCenter;
    _label.textColor=[UIColor blueColor];
    [self  addSubview:_label];
    
    
}


-(void)sliderAction{

    _label.text=[NSString stringWithFormat:@"%f",self.slider.value];
    
    
}


-(void)segmentedAction:(UISegmentedControl *)segment{
    
    //获取点击的是哪一个分段
    switch (segment.selectedSegmentIndex) {
        case 0:
            [self segmentone];
            break;
        case 1:
            [self segmenttwo];
            break;
        case 2:
            [self segmentthree];
            break;
   
 
            
        default:
            break;
    }

    
    
    
}



-(void)segmentone{
    
    
    NSLog(@"1");
}


-(void)segmenttwo{
    
    
    NSLog(@"2");
}

-(void)segmentthree{
    
    
    NSLog(@"3");
}


@end
