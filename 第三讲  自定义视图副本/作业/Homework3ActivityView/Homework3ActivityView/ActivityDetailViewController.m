//
//  ActivityDetailViewController.m
//  Homework3ActivityView
//
//  Created by scjy on 15/11/22.
//  Copyright (c) 2015年 芒果iOS. All rights reserved.
//

#import "ActivityDetailViewController.h"

@interface ActivityDetailViewController ()

@end

@implementation ActivityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:0.4 green:0.5 blue:0.3 alpha:1.0 ];
    
//--------------------5.《吉姆餐厅》首发演唱会 宣传界面--------------------
//设置标题
        UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(20, 0, 200, 100)];
        title.text = @"赵雷2014新专辑《吉姆餐厅》首发演唱会，北京站";
        title.font = [UIFont systemFontOfSize:15];
    //默认换行
        title.numberOfLines = 0;
    //设置图片
    
    UIImage *image=[UIImage imageNamed:@"2.jpg"];
    UIImageView *imageView=[[UIImageView alloc]initWithImage:image];
    imageView.frame=CGRectMake(20, 80, 100, 100);
    
    
    
    
    
//        UIButton *activitylcon = [[UIButton alloc]initWithFrame:CGRectMake(20, 80, 100, 100)];
//    //设置前景图
//        [activitylcon setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    //图片旁边基本信息
        UILabel *time = [[UILabel alloc]initWithFrame:CGRectMake(130, 80, 300, 20)];
        time.text = @"时间：10-19 18:00 -- 10-19 23:30";
        time.font = [UIFont systemFontOfSize:13];
        UILabel *owner = [[UILabel alloc]initWithFrame:CGRectMake(130, 100, 110, 20)];
    
        owner.text = @"人物：赵雷";
        owner.font = [UIFont systemFontOfSize:13];
    
        UILabel *category = [[UILabel alloc]initWithFrame:CGRectMake(130, 120, 130, 20)];
        category.text = @"类型：音乐";
        category.font = [UIFont systemFontOfSize:13];
    
        UILabel *address = [[UILabel alloc]initWithFrame:CGRectMake(130, 140, 150, 50)];
    
        address.text = @"地址：北京 东城区 北京市东城区和平里西街79号糖果大楼三层";
        address.font = [UIFont systemFontOfSize:13];
        address.numberOfLines = 0;
    //活动介绍
        UILabel *content = [[UILabel alloc]initWithFrame:CGRectMake(20, 130, 200, 200)];
        content.text = @"活动介绍";
        content.font = [UIFont systemFontOfSize:20];
    //设置文字阴影颜色
        content.shadowColor = [UIColor purpleColor];
        UILabel *content1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 230, 300, 50)];
        content1.text = @"【新专辑2014全国巡演合作咨询】";
        content1.font = [UIFont systemFontOfSize:15];
    
        UILabel *content2 = [[UILabel alloc]initWithFrame:CGRectMake(20, 255, 300, 50)];
        content2.text = @"@蒋步庭";
        content2.font = [UIFont systemFontOfSize:15];
    
        UILabel *content3 = [[UILabel alloc]initWithFrame:CGRectMake(20, 280, 300, 50)];
        content3.text = @"微博http://weibo.com/jiangbuting";
        content3.font = [UIFont systemFontOfSize:15];
    
        UILabel *content4 = [[UILabel alloc]initWithFrame:CGRectMake(20, 300, 400, 50)];
        content4.text = @"豆瓣http://www.douban.com/people/jiangbuting/";
        content4.font = [UIFont systemFontOfSize:15];
    
        UILabel *content5 = [[UILabel alloc]initWithFrame:CGRectMake(20, 320, 400, 50)];
        content5.text = @"QQ 1193657158";
        content5.font = [UIFont systemFontOfSize:15];
    
        UILabel *content6 = [[UILabel alloc]initWithFrame:CGRectMake(20, 350, 400, 50)];
        content6.text = @"手机 1861096776";
        content6.font = [UIFont systemFontOfSize:15];
    
        UILabel *content7 = [[UILabel alloc]initWithFrame:CGRectMake(20, 380, 300, 50)];
        content7.text = @"【赵雷巡演两千人群241855614】";
        content7.font = [UIFont systemFontOfSize:15];
    
        UILabel *content8 = [[UILabel alloc]initWithFrame:CGRectMake(20, 400, 300, 50)];
        content8.text = @"【赵雷歌迷北京活动群189347699】";
        content8.font = [UIFont systemFontOfSize:15];
    
        UILabel *content9 = [[UILabel alloc]initWithFrame:CGRectMake(20, 460, 200, 50)];
        content9.text = @"---------------------------------------------";
        content9.font = [UIFont systemFontOfSize:15];
        content9.numberOfLines = 0;
    
        UILabel *content10 = [[UILabel alloc]initWithFrame:CGRectMake(20, 480, 360, 100)];
        content10.text = @"赵雷2014新专辑《吉姆餐厅》专辑首发演出，北京站 演出时间：10月19日";
        content10.font = [UIFont systemFontOfSize:15];
        //默认换行
        content10.numberOfLines = 0;
    
        UILabel *content11 = [[UILabel alloc]initWithFrame:CGRectMake(20, 550, 200, 50)];
        content11.text = @"---------------------------------------------";
        content11.font = [UIFont systemFontOfSize:15];
        content11.numberOfLines = 0;
    
        [self.view addSubview:content11];
        [self.view addSubview:content10];
        [self.view addSubview:content9];
        [self.view addSubview:content8];
         [self.view addSubview:content7];
        [self.view addSubview:content6];
        [self.view addSubview:content5];
        [self.view addSubview:content4];
        [self.view addSubview:content3];
        [self.view addSubview:content2];
        [self.view addSubview:content1];
        [self.view addSubview:content];
        [self.view addSubview:category];
        [self.view addSubview:address];
        [self.view addSubview:owner];
        [self.view addSubview:time];
        [self.view addSubview:imageView];
        [self.view addSubview:title];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
