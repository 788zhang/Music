//
//  MangoViewController.m
//  自定义TableViewCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
#import "CustomTableViewCell.h"
// 引入直接打印数组的类目
#import "NSArray+array.h"
#import "CarDateModel.h"

@interface MangoViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSArray *sectionTitleArry;//分区标题的数组

@property(nonatomic, retain) NSMutableArray *allCarArray;    //所有分区下的汽车个数总和的数组

@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"网易新闻";
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    
    UIBarButtonItem *leftbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    self.navigationItem.leftBarButtonItem=leftbtn;
    
    
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.rowHeight=110;
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    self.tableView.backgroundColor=[UIColor redColor];
    self.tableView.separatorColor=[UIColor blackColor];
    [self.view addSubview:self.tableView];
    [self.tableView release];

    
    
    [self configTableDate];
    
    
    
    
    
  
}
//解析plist文件中数据
-(void)configTableDate{
    //寻找plist文件的工程路径
    NSString *path=[[NSBundle mainBundle]pathForResource:@"Car" ofType:@".plist"];
    
    //通过资源名字和路径，解析出里面的内容
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    //把字典中的所有key取出来
    self.sectionTitleArry=dic.allKeys;
    //NSLog(@"%@",dic.allKeys);
    
    
    
    self.allCarArray=[NSMutableArray new];
    
    for (NSString *key  in self.sectionTitleArry) {
        
        NSMutableArray *group=[NSMutableArray new];
        
        //通过便利字典中的key值取出对应的valew值
        NSArray *array=dic[key];
        for (NSDictionary *dic in array) {
            //把字典传入model内部进行数据模型的转化
            CarDateModel *model=[[CarDateModel alloc]initWithDictionary:dic];
            
            [group addObject:model];
            
        }
    
        
        
        [self.allCarArray addObject:group];
        
        
        NSLog(@"%@",self.allCarArray);
        
        
        
    }
    
    
    
    //NSLog(@"%@",self.allCarArray);
    
    
}

- (void)dealloc{
    
    //如何安全释放
    
    [_tableView release],_tableView=nil;
    [super dealloc];
    
}


#pragma mark ----UITableViewDataSource
//返回分区的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.sectionTitleArry.count;
    
}
//返回分区标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    
    return self.sectionTitleArry[section];
}

//返回分区的元素
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray *group=self.allCarArray[section];
    return group.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   //重用标示符
    static NSString *str=@"zhang";
    //自定义cell
    CustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:str];
    
    if (cell==nil) {
        cell=[[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    }
    //先取出对应分区的数组
    NSMutableArray *group=self.allCarArray[indexPath.section];
    CarDateModel *model=group[indexPath.row];
    cell.model=model;
    
    
    return cell;
}


#pragma mark ---编辑方法



- (void)setEditing:(BOOL)editing animated:(BOOL)animated{
    
    
    
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return YES;
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return UITableViewCellEditingStyleDelete;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

//点击方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
