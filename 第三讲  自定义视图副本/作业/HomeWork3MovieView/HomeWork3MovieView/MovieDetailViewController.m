//
//  MovieDetailViewController.m
//  HomeWork3MovieView
//
//  Created by scjy on 15/11/22.
//  Copyright (c) 2015年 芒果iOS. All rights reserved.
//

#import "MovieDetailViewController.h"

@interface MovieDetailViewController ()

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.5 blue:0.8 alpha:1.0 ];
//6.《敢死队》电影 宣传界面
    //图片
    
    UIImage *image=[UIImage imageNamed:@"4.jpg"];
    UIImageView *imageview=[[UIImageView alloc]initWithImage:image];
    imageview.frame=CGRectMake(20, 30, 150, 200);
    
    
    
    
    
    
    
    
    
//        UIButton *movieicon = [[UIButton alloc]initWithFrame:CGRectMake(20, 30, 150, 200)];
//        [movieicon setImage:[UIImage imageNamed:@"4.jpg"] forState:UIControlStateNormal];
    //图片介绍
        UILabel *rating = [[UILabel alloc]initWithFrame:CGRectMake(190, 30, 300, 50)];
        rating.text = @"评分：7.1  (1506万评论)";
        rating.font = [UIFont systemFontOfSize:15];
    
        UILabel *date = [[UILabel alloc]initWithFrame:CGRectMake(190, 60, 200, 50)];
        date.text = @"上映：2014/09/01";
        date.font = [UIFont systemFontOfSize:15];
    
        UILabel *runtime = [[UILabel alloc]initWithFrame:CGRectMake(190, 90, 200, 50)];
        runtime.text = @"时间：126分钟";
        runtime.font = [UIFont systemFontOfSize:15];
    
        UILabel *genres = [[UILabel alloc]initWithFrame:CGRectMake(190, 120, 200, 50)];
        genres.text = @"类型：动作/冒险/惊悚";
        genres.font = [UIFont systemFontOfSize:15];
    
        UILabel *country = [[UILabel alloc]initWithFrame:CGRectMake(190, 150, 200, 50)];
        country.text = @"国家：美国|法国";
        country.font = [UIFont systemFontOfSize:15];
    //制作人
        UILabel *actors = [[UILabel alloc]initWithFrame:CGRectMake(20, 250, 200, 50)];
        actors.text = @"制作人";
        actors.font = [UIFont systemFontOfSize:25];
        actors.shadowColor = [UIColor purpleColor];
        UILabel *actorsPeople = [[UILabel alloc]initWithFrame:CGRectMake(20, 290, 366, 100)];
        actorsPeople.text = @"西尔维斯特.史泰龙Sylvester Stallone,杰森.斯坦森 Jason Statham，梅尔吉布森 Mel Gibson，李连杰 JetLi";
        actorsPeople.font = [UIFont systemFontOfSize:15];
        actorsPeople.numberOfLines = 0;
    //电影情节
        UILabel *plot = [[UILabel alloc]initWithFrame:CGRectMake(20, 380, 200, 50)];
        plot.text = @"电影情节";
        plot.font = [UIFont systemFontOfSize:25];
        plot.shadowColor = [UIColor purpleColor];
    
        UILabel *plotConten = [[UILabel alloc]initWithFrame:CGRectMake(40, 430, 330, 220)];
        plotConten.text = @"在此次的第三部的故事中,巴尼（史泰龙 饰）与克影片《敢死队3》是2014年出品的一部动作电影，其剧本由戴夫·卡拉汉姆、西尔维斯特·史泰龙共同编写，由派特里克·休斯与丹·布拉德利共同执导。西尔维斯特·史泰龙、杰森·斯坦森、梅尔·吉布森、李连杰、阿诺·施瓦辛格和道夫·龙格尔等联袂出演。影片将于2014年8月15日在北美地区公映。电影讲述巴尼与克里斯马斯领衔的敢死队为了正面迎战昔日战友、现是军火枭雄的斯通班克斯，给敢死队注入新鲜血液，招募更快更强的高科技战斗新生，准备展开一番大决战。 >>>";
        plotConten.font = [UIFont systemFontOfSize:15];
        plotConten.numberOfLines = 0;
    

        [self.view addSubview:plotConten];
        [self.view addSubview:plot];
        [self.view addSubview:actorsPeople];
        [self.view addSubview:actors];
        [self.view addSubview:country];
        [self.view addSubview:genres];
        [self.view addSubview:runtime];
        [self.view addSubview:date];
        [self.view addSubview:rating];
        [self.view addSubview:imageview];





}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
