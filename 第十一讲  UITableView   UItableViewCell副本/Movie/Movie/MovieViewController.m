//
//  MovieViewController.m
//  Movie
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MovieViewController.h"
#import "MovieDateModel.h"
#import "MovieTableViewCell.h"
@interface MovieViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSMutableArray *movieArr;



@end
@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    self.tableView.rowHeight=140;
    [self.view addSubview:self.tableView];
    
    [self adddate];
    
}




-(void)adddate{
    
    MovieDateModel *movie1=[[MovieDateModel alloc]initWithName:@"夏洛特烦恼" addMovieIntroduce:@"昔日校花秋雅（王智饰）的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛（沈腾饰）看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现（马丽饰）场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星。醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的。" addMoveTime:@"2015年6月" addMovieCount:569781 addPicname:@"1.jpg"];
    
    MovieDateModel *movie2=[[MovieDateModel alloc]initWithName:@"女神跟我走" addMovieIntroduce:@"《女神跟我走》是大唐风韵、银润传媒、贵州双龙实业集团有限公司、内蒙古天宇创新投资集团有限公司联合出品的爱情电影。由刘新执导，林永健、韩雪、宋允皓、宋丹丹、李菁菁联袂主演。该片主要讲述的是暖男林大健和高富帅在真人秀上为争夺女神芳心无所不用其极，闹出了一系列爆笑的追爱乌的故事。" addMoveTime:@"2015年5月1日在中国上映" addMovieCount:56978100 addPicname:@"2.jpg"];
    
    MovieDateModel *movie3=[[MovieDateModel alloc]initWithName:@"夏洛特烦恼" addMovieIntroduce:@"昔日校花秋雅（王智饰）的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛（沈腾饰）看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现（马丽饰）场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星。醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的。" addMoveTime:@"2015年6月" addMovieCount:569781 addPicname:@"1.jpg"];
    
    MovieDateModel *movie4=[[MovieDateModel alloc]initWithName:@"女神跟我走" addMovieIntroduce:@"《女神跟我走》是大唐风韵、银润传媒、贵州双龙实业集团有限公司、内蒙古天宇创新投资集团有限公司联合出品的爱情电影。由刘新执导，林永健、韩雪、宋允皓、宋丹丹、李菁菁联袂主演。该片主要讲述的是暖男林大健和高富帅在真人秀上为争夺女神芳心无所不用其极，闹出了一系列爆笑的追爱乌的故事。" addMoveTime:@"2015年5月1日在中国上映" addMovieCount:56978100 addPicname:@"2.jpg"];
    MovieDateModel *movie5=[[MovieDateModel alloc]initWithName:@"夏洛特烦恼" addMovieIntroduce:@"昔日校花秋雅（王智饰）的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛（沈腾饰）看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现（马丽饰）场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星。醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的。" addMoveTime:@"2015年6月" addMovieCount:569781 addPicname:@"1.jpg"];
    
    MovieDateModel *movie6=[[MovieDateModel alloc]initWithName:@"女神跟我走" addMovieIntroduce:@"《女神跟我走》是大唐风韵、银润传媒、贵州双龙实业集团有限公司、内蒙古天宇创新投资集团有限公司联合出品的爱情电影。由刘新执导，林永健、韩雪、宋允皓、宋丹丹、李菁菁联袂主演。该片主要讲述的是暖男林大健和高富帅在真人秀上为争夺女神芳心无所不用其极，闹出了一系列爆笑的追爱乌的故事。" addMoveTime:@"2015年5月1日在中国上映" addMovieCount:56978100 addPicname:@"2.jpg"];
    MovieDateModel *movie7=[[MovieDateModel alloc]initWithName:@"夏洛特烦恼" addMovieIntroduce:@"昔日校花秋雅（王智饰）的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛（沈腾饰）看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现（马丽饰）场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星。醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的。" addMoveTime:@"2015年6月" addMovieCount:569781 addPicname:@"1.jpg"];
    
    MovieDateModel *movie8=[[MovieDateModel alloc]initWithName:@"女神跟我走" addMovieIntroduce:@"《女神跟我走》是大唐风韵、银润传媒、贵州双龙实业集团有限公司、内蒙古天宇创新投资集团有限公司联合出品的爱情电影。由刘新执导，林永健、韩雪、宋允皓、宋丹丹、李菁菁联袂主演。该片主要讲述的是暖男林大健和高富帅在真人秀上为争夺女神芳心无所不用其极，闹出了一系列爆笑的追爱乌的故事。" addMoveTime:@"2015年5月1日在中国上映" addMovieCount:56978100 addPicname:@"2.jpg"];
    MovieDateModel *movie9=[[MovieDateModel alloc]initWithName:@"夏洛特烦恼" addMovieIntroduce:@"昔日校花秋雅（王智饰）的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛（沈腾饰）看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现（马丽饰）场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星。醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的。" addMoveTime:@"2015年6月" addMovieCount:569781 addPicname:@"1.jpg"];
    
    MovieDateModel *movie10=[[MovieDateModel alloc]initWithName:@"女神跟我走" addMovieIntroduce:@"《女神跟我走》是大唐风韵、银润传媒、贵州双龙实业集团有限公司、内蒙古天宇创新投资集团有限公司联合出品的爱情电影。由刘新执导，林永健、韩雪、宋允皓、宋丹丹、李菁菁联袂主演。该片主要讲述的是暖男林大健和高富帅在真人秀上为争夺女神芳心无所不用其极，闹出了一系列爆笑的追爱乌的故事。" addMoveTime:@"2015年5月1日在中国上映" addMovieCount:56978100 addPicname:@"2.jpg"];
    
    
    self.movieArr=[NSMutableArray arrayWithObjects:movie1,movie2,movie3,movie4,movie5,movie6,movie7,movie8,movie9,movie10, nil];
    
    
    
       
}



#pragma mark ----UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.movieArr.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *movieTitle=@"movie";
    
    MovieTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:movieTitle];
    if (cell == nil) {
        cell=[[MovieTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:movieTitle];
    }
    
    
    MovieDateModel *model=self.movieArr[indexPath.row];
    
    cell.nameLabel.text=model.movieName;
    cell.contenLabel.text=model.movieIntroduce;
    cell.movieimageview.image=[UIImage imageNamed:model.movePicName];
    
    cell.timeLabel.text=model.moveTime;
    cell.watchCountLabel.text=[NSString stringWithFormat:@"%ld万次",(long)model.moveWatchCount];
    
    
    
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
