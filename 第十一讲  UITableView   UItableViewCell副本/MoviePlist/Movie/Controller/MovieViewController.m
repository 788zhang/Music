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
@property(nonatomic, retain) NSMutableArray *movieNameArr;
@property(nonatomic, retain) NSArray *sectionTitleArr;


@end
@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    self.tableView.rowHeight=140;
    [self.view addSubview:self.tableView];
    
    [self configDate];

    
}



-(void)configDate{
    NSString *path=[[NSBundle mainBundle]pathForResource:@"movie" ofType:@".plist"];
    
    
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    
    self.sectionTitleArr=dic.allKeys;
    
    self.movieNameArr=[NSMutableArray new];
    for (NSString *key in  self.sectionTitleArr) {
        
        NSMutableArray *group=[[NSMutableArray alloc]init];
        NSArray *arr=dic[key];
       
        for (NSDictionary *dic in arr) {
            
            
            MovieDateModel *model=[[MovieDateModel alloc]initWithDictionary:dic];
            [group addObject:model];
            
        }
        
        [self.movieNameArr addObject:group];
    }
    
    
    
 
    
    
}




#pragma mark ----UITableViewDataSource
//分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableArray *group=self.movieNameArr[section];
    
    return group.count;
    
}
//cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *movieTitle=@"movie";
    
    MovieTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:movieTitle];
    if (cell == nil) {
        cell=[[MovieTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:movieTitle];
    }
    
    

    cell.model=self.movieNameArr[indexPath.section][indexPath.row];
   
   
    
    return cell;
}

//分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return self.sectionTitleArr[section];
}

//分区的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.sectionTitleArr.count;
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
