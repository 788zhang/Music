//
//  MangoView.m
//  GestureRecongnized
//
//  Created by scjy on 15/11/25.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoView.h"
@interface MangoView ()
{
    UIImageView *imageview;
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
    self.backgroundColor=[UIColor yellowColor];
  /*
    
    //轻拍手势
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
    //点击次数
    tap.numberOfTapsRequired=3;
    //手指个数  几个触碰点
    tap.numberOfTouchesRequired=2;
    [self addGestureRecognizer:tap];
    [tap release];
    
    
   */
    
    /*
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpressAction:)];
    longpress.minimumPressDuration=1;
    longpress.numberOfTouchesRequired=1;
    [self addGestureRecognizer:longpress];
    [longpress release];
    
    */
    
    
    /*
     UIRotationGestureRecognizer *rotation=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotationAcion:)];
          [imageview addGestureRecognizer:rotation];
     [rotation release];

     
     */
    
    /*
     UIPinchGestureRecognizer *pinch=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchAction:)];
     
     [imageview addGestureRecognizer:pinch];
     

     
     */
    
    /*
     //平移
     UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAction:)];
     
     [imageview addGestureRecognizer:pan];
     [pan release];
     

     */
    /*
     //清扫
     UISwipeGestureRecognizer *swipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAction:)];
     
     //方向不能设置为一个垂直一个水平，所以设置俩个swipe
     //设置方向，垂直方向
     swipe.direction=UISwipeGestureRecognizerDirectionUp |
     UISwipeGestureRecognizerDirectionDown;
     
     [imageview addGestureRecognizer:swipe];
     [swipe release];
     
     UISwipeGestureRecognizer *swipe2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAction:)];
     //设置方向，水平方向
     swipe2.direction=UISwipeGestureRecognizerDirectionLeft |
     UISwipeGestureRecognizerDirectionRight;
     
     [imageview addGestureRecognizer:swipe2];
     [swipe2 release];

     
     */
    
    imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"20.png"]];
    
    imageview.frame=CGRectMake(60, 60, self.frame.size.width-120, self.frame.size.height-120);
    imageview.contentMode=UIViewContentModeScaleAspectFit;
    //打开用户交互的属性
    imageview.userInteractionEnabled=YES;
    [self addSubview:imageview];
    [imageview release];
    
    UIScreenEdgePanGestureRecognizer *Screen=[[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(screenActon:)];
    
    Screen.edges=UIRectEdgeLeft;
    
    [self addGestureRecognizer:Screen];
    [Screen release];
    
    
   
    
   }

-(void)screenActon:(UIScreenEdgePanGestureRecognizer *)screen{
    
    NSLog(@"屏幕");
    
}


- (void)dealloc{
    
    [imageview release];
    [super dealloc];
    
}


-(void)tapAction{
    
    self.backgroundColor=[UIColor colorWithRed:arc4random()%256/255 green:arc4random()%256/255 blue:arc4random()%256/255 alpha:1];
    NSLog(@"一根手指");
}


-(void)longpressAction:(UILongPressGestureRecognizer *)longpress{
    //长按手势默认执行俩次，一次是长按开始的时候，然后手指离开的时候也会触发一次（加入旋转到45度，的位置，下次就是56度，如果不重置，下次就跑到91°多，跳转很快）
       if (longpress.state==UIGestureRecognizerStateBegan) {
         NSLog(@"长按手势");
    } else  if(longpress.state==UIGestureRecognizerStateEnded){
        NSLog(@"结束");
        
        self.backgroundColor=[UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1];
    }
    
}


-(void)rotationAcion:(UIRotationGestureRecognizer *)rotation{
    //transform  形变
    //第一个参数是视图原来的形变状态
    //旋转手势旋转的弧度
    imageview.transform=CGAffineTransformRotate(imageview.transform, rotation.rotation);
    NSLog(@"%f",rotation.rotation);
    //重置旋转的弧度  目的：如果不重置，那么每次旋转都是基于上次的旋转角度进行旋转
    rotation.rotation=0;
    
    
}


-(void)pinchAction:(UIPinchGestureRecognizer *)pinch{
    //捏合手势有一个属性scale就是捏合的比例
    //第一个参数是上一次形变的位置
    imageview.transform=CGAffineTransformScale(imageview.transform, pinch.scale, pinch.scale);
    
    NSLog(@"%f",pinch.scale);
    //把缩放比例重置成1.0，每次放大或缩小都是1.0，，放大是1.多，缩小是0.几
    pinch.scale=1;
}


-(void)panAction:(UIPanGestureRecognizer *)pan{
    
    CGPoint offset=[pan translationInView:imageview];
    imageview.transform=CGAffineTransformTranslate(imageview.transform, offset.x, offset.y);
    NSLog(@"%f,%f",offset.x,offset.y);
    
    [pan setTranslation:CGPointZero inView:imageview];
    

    
//    CGPoint translationpan=[pan translationInView:imageview];
//    pan.view.center=CGPointMake(pan.view.center.x+translationpan.x, pan.view.center.y+translationpan.y);
//    
//    [pan setTranslation:CGPointZero inView:self];
    
}

-(void)swipeAction:(UISwipeGestureRecognizer *)swipe{
    
    NSLog(@"这是水平清扫");
    
    
}

@end
