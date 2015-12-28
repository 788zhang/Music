//
//  TitleViewController.m
//  ThreeHundredTangPoems
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "TitleViewController.h"
#import "PoemTableViewCell.h"
#import "ContentViewController.h"
@interface TitleViewController ()
@property(nonatomic, retain) UITableView *tableView;

@property(nonatomic, retain) NSDictionary *contentDic;
@property(nonatomic, retain) NSDictionary *indexDic;
@property(nonatomic, retain) NSArray *sectionarr;

//取出index中的标题
@property(nonatomic, retain) NSArray *TitleForIndex;
//取出的每个数组，放到一个大的数组中
@property(nonatomic, retain) NSMutableArray *group;




@end

@implementation TitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    
    self.title=@"目录";
    
    [self.view addSubview:self.tableView];
    
    
    [self configDate];
    
}

//懒加载tableView
- (UITableView *)tableView{
    
    
    if (_tableView ==nil) {
        self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        
        self.tableView.delegate=self;
        self.tableView.dataSource=self;
        self.tableView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"2.jpg"]];
        self.tableView.separatorColor=[UIColor blackColor];
    }
    
    return _tableView;
    
    
}
//数据分析

- (void)configDate{
    
    NSString *path=[[NSBundle mainBundle]pathForResource:@"tangshi" ofType:@".plist"];
    
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    
    //内容,,,在切换的时候用
    self.contentDic=dic[@"content"];
    
    
    self.arrAllContentKey=self.contentDic.allKeys;
    //首页 cell显示的内容
    self.indexDic=dic[@"index"];
    // 区域标题
    self.sectionarr=dic[@"section"];
    
    //首页，区域的标题
    self.TitleForIndex=self.indexDic.allKeys;
    self.group=[[NSMutableArray alloc]init];
    //点击的标题的key
    self.group= self.indexDic[self.sectionKey];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    
    return 1;
}




//一个分区多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return self.group.count;
}

//标题索引







- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID=@"zhang";
    PoemTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        
        cell=[[PoemTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
        
    }
    
    
    cell.label.text=self.group[indexPath.row];
    cell.backgroundColor=[UIColor clearColor];
    return cell;
    
}




#pragma mark ----切换页面
//点击table，进入详细内容界面
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ContentViewController *content=[[ContentViewController alloc]init];
    
    
    ContentModel *model=[[ContentModel alloc]init];
    
    [model getWithAddKey:self.group[indexPath.row]    addDictionary:self.contentDic addModel:^(ContentModel *contenModel) {
        content.model=contenModel;
        content.title=self.group[indexPath.row];
    }];
    
    
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:content];
    
    [self presentViewController:nav animated:YES completion:nil];
    
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
