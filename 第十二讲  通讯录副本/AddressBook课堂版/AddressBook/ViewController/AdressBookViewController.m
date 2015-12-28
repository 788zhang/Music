//
//  AdressBookViewController.m
//  AddressBook
//
//  Created by scjy on 15/12/3.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AdressBookViewController.h"
#import "AdressBookDateModel.h"
#import "AdressBookTableViewCell.h"
#import "DetailViewController.h"

@interface AdressBookViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSArray *grouptitle;
@property(nonatomic, retain) NSMutableArray *allPeople;


@end

@implementation AdressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"通讯录";
    
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    
    UIBarButtonItem *barleft=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(finish)];
    self.navigationItem.leftBarButtonItem=barleft;
    
    
    
    
    
    
    
    
    
    //第一步：添加tableview，设置代理
    [self.view addSubview:self.tableView];

    
    [self configDate];
    
   
}


//lazy loading  懒加载
//setter  方法
- (UITableView *)tableView{
    
    //先判断实例变量是否存在
    if (_tableView==nil) {
        //如果不存在就去创建一个
        
        self.tableView=[[UITableView alloc]initWithFrame:self.view.frame  style:UITableViewStylePlain];
        
        self.tableView.delegate=self;
        self.tableView.dataSource=self;
        
        
        self.tableView.rowHeight=75;
        self.tableView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"head_15.jpg"]];
        self.tableView.separatorColor=[UIColor blackColor];
        
        
    }

    
    return _tableView;
    
}




-(void)configDate{
   
    NSString *path=[[NSBundle mainBundle]pathForResource:@"AddressBook" ofType:@".plist"];
    
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    
   
    //分区的标题
    self.grouptitle=dic.allKeys;
    self.allPeople=[NSMutableArray new];
    
    
    for (NSString *key in self.grouptitle) {
        NSArray *arr=dic[key];
        //定义一个小组存放每组人员的Model数据
        __block NSMutableArray *groupArray=[NSMutableArray new];
        for (NSDictionary *dic in arr) {
            AdressBookDateModel *model=[[AdressBookDateModel alloc]init];
            [model getModelFromDictionary:dic addModelBlock:^(AdressBookDateModel *adressmodel) {
               
                [groupArray addObject:adressmodel];
                
                
            }];
            
           
        }
        [self.allPeople addObject:groupArray];
    }
    
    
}

-(void)finish{
    
    [self.tableView setEditing:NO animated:NO];
    
}



//第二步：实现协议里的部分方法
#pragma mark ----数据源

//分区的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.grouptitle.count;
    
}



//分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
   
    return self.grouptitle[section];
}



//分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableArray *group=self.allPeople[section];
    return group.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *str=@"zhang";
    AdressBookTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:str];
    
    
    if (cell == nil) {
        cell=[[AdressBookTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        
        
        
    }

   
    
    cell.model=self.allPeople[indexPath.section][indexPath.row];
    cell.backgroundColor=[UIColor clearColor];
    
   
    
    return cell;
    
}



#pragma mark ----编辑

//是否可编辑
- (void)setEditing:(BOOL)editing animated:(BOOL)animated{
    
    [self.tableView setEditing:YES animated:YES];
}

//可编辑行
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return YES;
}



- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return UITableViewCellEditingStyleInsert;
}


//提交
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSMutableArray *group=self.allPeople[indexPath.section];
    
    [group insertObject:group[indexPath.row] atIndex:indexPath.row];
    
    
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation: UITableViewRowAnimationMiddle];
    
}



#pragma mark ----点击Cell触发的方法

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //如果传入视图，那么新建了一个，导致值传过去，不能显示，因为俩个view不一样
    DetailViewController *a=[[DetailViewController alloc]init];
    a.model=self.allPeople[indexPath.section][indexPath.row];

    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:a];
    a.modalPresentationStyle=UIModalPresentationCurrentContext;
    a.modalTransitionStyle=UIModalTransitionStylePartialCurl;
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
   
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
