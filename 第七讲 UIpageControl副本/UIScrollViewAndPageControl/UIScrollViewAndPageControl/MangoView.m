//
//  MangoView.m
//  UIScrollViewAndPageControl
//
//  Created by scjy on 15/11/26.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"
//宏定义不能加分号
#define kwidth self.frame.size.width
#define kheight  self.frame.size.height
@interface MangoView ()
{
    UIScrollView *scroll;
    
    
    
}


@property(nonatomic, retain) UIPageControl *pagecontrol;
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

-(void)dealloc{
    
    [self.pagecontrol release];
    [scroll release];
    [super dealloc];
    
}

-(void)loadingCustomView{
    
   
    
    //scroll的frame和contentsize的区别
    
    //frame是scrollview能够显示的大小
    //contentsize是scroller里内容的大小
    //frame的大小决定了你能看到的内容的大小
    
    scroll=[[UIScrollView alloc]initWithFrame:self.frame];
    //点击时间区域，立刻跳到顶部,,只有上下滑动才有效果
    scroll.scrollsToTop=YES;
    //整平滑动
    scroll.pagingEnabled=YES;
    
    //遇到边界是否可以弹回，默认是yes，滑动到边界还可以继续滑动，但是松手的时候会自动弹回，如果是no，到边界就会停止，边界无法滑动
    scroll.bounces=YES;
    //是否可以滑动，默认是yes
    scroll.scrollEnabled=YES;
    //是否显示水平方向滚动条
    scroll.showsHorizontalScrollIndicator=YES;
    //是否显示垂直滚动条
    scroll.showsVerticalScrollIndicator=YES;
    
    
    //设置代理
    
    scroll.delegate=self;
    

    
    
    //内容的大小如果小于等于scrollView的啥时候仍然可以滑动
    scroll.alwaysBounceHorizontal=YES;
    scroll.alwaysBounceVertical=NO;
    scroll.backgroundColor=[UIColor yellowColor];
   //当contentsize大于scrollView的frame是就可以滑动。如果只有滑动宽度大于scroll的宽度，那么就可以横向滑动
    scroll.contentSize=CGSizeMake(kwidth*7, kheight);
    
    
    
    
    
    

    
    /**
    //图片浏览
    //1.图片想要滑动就要就把图片加到scrollView上
    2.scrollView  自带缩放功能，图片的放大缩小需要依靠scrollview的放大缩小
     3.把所有图片都添加到scrollview上，scrollview的放大缩小是整个scrollview的而不是每张图片放大缩小
     4.把每张图片都添加到一个scrollview上，这样，每张图片就实现了放大缩小的功能，但是还有一个问题，如何让这些能放大缩小的图片来回移动呢？
     5把加载的每张图片的scrollview添加到一个大的scrollview上，就实现了放大和缩小
     
     **/
    for (int i=0; i<7; i++) {
        
        UIScrollView *scorollview=[[UIScrollView alloc]initWithFrame:CGRectMake(kwidth * i, 0, kwidth, kheight)];
        
        //最少缩小比例
        scorollview.minimumZoomScale=0.5;
        //最大放大比例
        scorollview.maximumZoomScale=2;
        //设置代理
        
        scorollview.delegate=self;
         [scroll addSubview:scorollview];
        
        UIImageView  *imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]]];
        imageview.frame=CGRectMake(0, 0, kwidth, kheight) ;
        imageview.tag=110;
        [scorollview addSubview:imageview];
        [imageview release];
          }
        [self addSubview:scroll];
        [scroll release];
    
    //创建pagecontrol
    self.pagecontrol=[[UIPageControl alloc]initWithFrame:CGRectMake(0, kheight-80, kwidth, 30)];
    //页面个数
    self.pagecontrol.numberOfPages=7;
    //未选中页面的颜色
    self.pagecontrol.pageIndicatorTintColor=[UIColor cyanColor];
    //当前页面的颜色
    self.pagecontrol.currentPageIndicatorTintColor=[UIColor yellowColor];
    
    
    [self.pagecontrol addTarget:self action:@selector(pagecontrol:) forControlEvents:UIControlEventValueChanged];
    //self.pagecontrol.backgroundColor=[UIColor redColor];
    //加到主视图self
    [self   addSubview:self.pagecontrol];
    [self.pagecontrol release];

    
    

    
}

//实现代理方法
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    NSLog(@"%@",scrollView);
    
    UIImageView *imageview=(UIImageView *)[scrollView viewWithTag:110];
    return imageview;
   
//    //在scrollview上通过tag值寻找imageview
//    return [scrollView viewWithTag:0];
    
}

-(void)pagecontrol:(UIPageControl *)page{
    
    //第一步：获取pagecontrol点击的第几个页面
    NSInteger num =  page.currentPage;
    //第二步：获取页面的宽度：
    CGFloat pageWidth=scroll.frame.size.width;
    //让scrollview滚动到第几页
    scroll.contentOffset=CGPointMake(num * pageWidth, 0);
    
    
    
}
#pragma mark-------根据图片的滑动，小点也随着滑动
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    //第一步：获取scrollView的宽度
    CGFloat pageWidth=scroll.frame.size.width;
    //第二步 获取scrollview停止时候的偏移量
    //scroll.contentOffset  是当前距离原点的位置
    CGPoint offset=scroll.contentOffset;
    //第三步：通过偏移量和页面宽度获取第几页
    NSInteger pagenum=offset.x/pageWidth;
    
    
    //第四步：修改pagecontrol的当前页
    self.pagecontrol.currentPage=pagenum;
    
}


@end
