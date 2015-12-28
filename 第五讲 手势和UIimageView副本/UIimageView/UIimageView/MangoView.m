//
//  MangoView.m
//  UIimageView
//
//  Created by scjy on 15/11/25.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"

//用宏定义的好处，可以快速计算屏幕俩边的宽度，可以适合各种屏幕
#define kwidth  self.frame.size.width
#define kheitht  self.frame.size.height
@implementation MangoView
//重写初始化方法，因为本类初始化的时候如果子类重写了init方法，就会执行子类的init方法，否则，执行父类的init方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadCustomView];
    }
    return self;
}



//按原来的图片大小尺寸 image.size.width  image.size.height
-(void)loadCustomView{
  
    UIImage *image1=[UIImage imageNamed:@"20.png"];
    
    //NSBundle mainBundle 当前应用程序的主路径
    //pathForResource:@"20" ofType:@".png" ，在当前主路径下去寻找资源的名字和格式
    NSString *path=[[NSBundle mainBundle]pathForResource:@"20" ofType:@".png"];
   // NSLog(@"%@",path);
    
    UIImage *image2=[[UIImage alloc]initWithContentsOfFile:path];
    
    //创建一个uiimageView
    // UIImageview相当于相框，  image相当于照片
    self.imageView=[[UIImageView alloc]initWithImage:image2];
    //设置imageView的大小
    //设置图片之后，如果不做任何设置默认图片会缩放到frame一样的大小
    
    
    //UIViewContentModeScaleAspectFit,按原来比例压缩，不失比例
    
    //UIViewContentModeScaleAspectFill  按原来比例，填充整个imaveView，可能有些部分显示不出来
    //UIViewContentModeTop  让图片从顶部显示，
    //UIViewContentModeBottom
    
    
    self.imageView.contentMode=UIViewContentModeTop;
    
    
    self.imageView.frame=CGRectMake(40,30, 160,300);
    
    //图片的用户交互默认是关闭状态。
    NSLog(@"%d",self.imageView.userInteractionEnabled);
    self.imageView.userInteractionEnabled=YES;
     NSLog(@"%d",self.imageView.userInteractionEnabled);
//    self.imageView.frame=self.frame;
    
    
    [self addSubview:self.imageView];
    [self.imageView release];
    
    
    
    
    
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    //使用imageview播放一组图片的动画
    NSMutableArray *imageArray=[NSMutableArray array];
    
    
    //创建图片名字
    for (int i=1; i<6; i++) {
        //%04d  输出4位，如果不足四位的，前面的数用0不全
        ////%0xd  输出x位，如果不足x位的，前面的数用0不全
        NSString *imagenameStr=[NSString stringWithFormat:@"%d.jpg",i];
        //通过图片名字创建image对象
        UIImage *image=[UIImage imageNamed:imagenameStr];
        //把图片对象添加到数组中
        [imageArray addObject:image];
        
    }
    
    //设置将要播放图片的数组
    self.imageView.animationImages=imageArray;
    //设置动画播放的时间
    self.imageView.animationDuration=2.0;
    //设置动画播放的次数
    self.imageView.animationRepeatCount=1
    ;
    
    //播放
    [self.imageView startAnimating ];
    

    
}





@end
