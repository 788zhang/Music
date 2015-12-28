//
//  MangoViewController.m
//  UITableView（Ten）
//
//  Created by scjy on 15/12/1.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"

@interface MangoViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSMutableArray *AllGroupArr;



@end

@implementation MangoViewController




- (void)dealloc{
    [_AllGroupArr release];
    [_tableView release];
    [super dealloc];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"iOS";
//    //在导航栏右边添加可编辑按钮
//    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    
    //在导航栏右边添加按钮
    UIBarButtonItem *rbar=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(move)];
    self.navigationItem.rightBarButtonItem=rbar;
    
    
    
    
    
    //在导航栏左边添加按钮
    UIBarButtonItem *lbar=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem=lbar;

    
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    //设置代理
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    self.tableView.backgroundColor=[UIColor redColor];
    self.tableView.separatorColor=[UIColor blackColor];
    
    [self.view addSubview:self.tableView];
    [self.tableView release];
    
    
    
    NSMutableArray *grou1=[[NSMutableArray alloc]initWithObjects:@"张鹏飞",@"乔子朋",@"赵佳慧",@"李志鹏", nil];
    
    NSMutableArray *grou2=[[NSMutableArray alloc]initWithObjects:@"韩苇琪",@"练晓俊",@"郭亚茹",@"马娟娟", nil];
    NSMutableArray *grou3=[[NSMutableArray alloc]initWithObjects:@"范芳芳",@"刘海燕",@"李书明",@"张衡", nil];
    
    
    self.AllGroupArr=[[NSMutableArray alloc]initWithObjects:grou1,grou2,grou3, nil];
    
    
}


-(void)back{
    
    
    [self.tableView  setEditing:NO animated:YES];
}

-(void)move{
    [self.tableView setEditing:YES animated:YES];
    
    
}




#pragma mark---数据源的代理方法

//返回分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //取出对应分区的小组
    NSMutableArray *group=self.AllGroupArr[section];
    return group.count;
    
}
//每出现一个新的cell，就会调用该方法
//cell  显示的位置和内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //全局静态变量
    static NSString *str=@"zhang";
    //从重用队列中取出cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:str];
    //如果为空，表示重用队列 中没有可用对象
   
    if (cell == nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    NSLog(@"...");
    }
    
//    //取出对应分区的小组
//    NSMutableArray *group=self.AllGroupArr[indexPath.section];
//    
//    cell.textLabel.text=group[indexPath.row];
    
    
    cell.textLabel.text=self.AllGroupArr[indexPath.section][indexPath.row];
  
        
    
    cell.imageView.image=[UIImage imageNamed:@"2.jpg"];
    
     return cell;
}


//返回有多少个分区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;{
    
    
    return self.AllGroupArr.count;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.tableView setEditing:YES animated:YES];
    
}



- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section==0) {
        return @"第一组";
    }else if(section==1){
        return @"第二组";
    }
    return @"第三组";
    
}
#pragma mark --- tableView 第一步：可编辑
//可编辑
- (void)setEditing:(BOOL)editing animated:(BOOL)animated{
    //第一步：让当前的tableView处于可编辑状态
    [self.tableView setEditing:YES animated:YES];
   
    
}

#pragma mark --- tableView 第二步：指定那些行可以编辑

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //如果只设置return, 那么所有行都可以编辑
    return YES;
}

#pragma mark --- tableView 第三步：指定编辑的样式

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return UITableViewCellEditingStyleInsert;
}

#pragma mark --- tableView 第四步：提交编辑状态，（先操作数据源，在修改更新UI）


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    //找到对应分区的数组里的对应位置的元素
    
    NSMutableArray *group=self.AllGroupArr[indexPath.section];
    
    //添加对应分区的数组里的对应位置的元素
    
   [group insertObject:group[indexPath.row] atIndex:indexPath.row];
  
    
    
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
   
    
    
}







#pragma mark  ----tableView  移动


//  第一步：  可编辑状态
//第二步：  指定tableview哪一行可以编辑
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    

    return YES;//让所有的cell都可以移动
}


//第三步：
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    //获取元素所在的数组
    
    NSMutableArray *arry=self.AllGroupArr[sourceIndexPath.section];
    //把当前元素中的对应位置的元素取出来
    NSString *name=[arry[sourceIndexPath.row]retain];;
    //把元素从原来位置上删除,指向将要被删除的元素，如果继续访问，可能有潜在的风险，添加retain，保留对象将持有一份
    [arry removeObjectAtIndex:sourceIndexPath.row];
    //插入到新的位置
    [arry insertObject:name atIndex:destinationIndexPath.row];
    
    [name release];
    
}


//检测移动过程，限制跨区移动


- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath{
    //判断起始位置的区域跟将要移动到目的地的区域是否是同一个区域
    
    if (sourceIndexPath.section==proposedDestinationIndexPath.section) {
        return proposedDestinationIndexPath;
    }
    
    //从哪来回哪去
    return sourceIndexPath;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
