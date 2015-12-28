//
//  MangoViewController.m
//  UITableView(lesson9)
//
//  Created by scjy on 15/11/30.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
//属性定义在。m中是私有属性
@interface MangoViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic ,retain) UIImageView *imageView;

@end

@implementation MangoViewController







- (void)dealloc{
    
    [self.tableView release];
    [self.imageView release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    //设置导航器  标题
    self.navigationItem.title=@"标题";
       
    
    //创建一个UITableView
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    //设置代理
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    //设置行高,默认是44
    self.tableView.rowHeight=55;
    //分割线颜色
    self.tableView.separatorColor=[UIColor blackColor];
     //分割线格式,默认是UITableViewCellSeparatorStyleSingleLine
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    self.tableView.backgroundColor=[UIColor redColor];
    [self.view addSubview:self.tableView];
    [self.tableView release];
    
}


#pragma mark -------UITableViewDataSource的方法实现
//实现协议里面的方法
//返回分区中有多少行，系统默认tableView有一个分区,只有一行

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
   
    return 10;
    
}


//将要显示的cell在那个位置
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //重用机制
    //重用标示符，重用队列，出屏幕被添加到重用队列，cell将要显示的时候先从重用队列里取，如果取不到，在创建一个新的cell
#pragma mark  ---1
    //定义一个重用标示符
    //static  静态全局变量，之创建一次，程序退出是释放
      static   NSString *cellIdentifier=@"CycelCell";
#pragma mark  ---2
    //去重用队列里取重用标示符为@“CycelCell”的cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (cell == nil) {
        
        //切记这里不能重新创建，而是继续使用创建好的cell
        //重用队列里面没有可用的cell，咱们在重新创建一个，然后把新建的cell的重用标示符设为上面定义的重用标示符
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
        
        
        
    }
    //无论是从重用队列还是新建的cell，都需要重新赋值
   // cell的相关属性和赋值
    //cell的标题
//    cell.textLabel.text=@"主标题";
//    //副标题
//    cell.detailTextLabel.text=@"副标题";
    //indexPath有俩个属性，一个是section一个是row
    
    //NSLog(@"%lu==%p",indexPath.row,&cell);
    
    if (indexPath.row==0) {
        cell.textLabel.text=@"张鹏飞";
        cell.detailTextLabel.text=@"电话：18860233150";
    } else if(indexPath.row==1){
        cell.textLabel.text=@"乔子朋";
        cell.detailTextLabel.text=@"电话：18860233156";
    }else if(indexPath.row==2){
        cell.textLabel.text=@"赵佳慧";
        cell.detailTextLabel.text=@"电话：xxxxxxxxxx";
    }else if(indexPath.row==3){
        cell.textLabel.text=@"李志鹏";
        cell.detailTextLabel.text=@"电话：xxxxxxxxxxxx";
    }


    
    
    
   
    //设置图片
    cell.imageView.image=[UIImage imageNamed:@"1.jpg"];
    cell.selectionStyle=UITableViewCellSelectionStyleBlue;
    
    
    
    //返回创建好的cell
    return cell;
    
}








//在tableview里面有多少个分区
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
    
}

//返回每个分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section==0) {
        return @"第一分区";
    }else if (section==1){
        return @"第二分区";
    }
    return @"第三分区";
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    if (section==0) {
        return @"a";
    }else if (section==1){
        return @"o";
    }
    return @"e";
    
}
//返回右侧索引
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    NSArray *titleArr=@[@"z",@"p",@"l"];
    return titleArr;
}

#pragma mark -----UITableViewDelegate

//区头的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 44;
}
//区尾的高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    
    return 30;
}

//自定义区头
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    view.backgroundColor=[UIColor redColor];
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    
    lable.textAlignment=NSTextAlignmentCenter;
    [view addSubview:lable];
    
    if (section==0) {
        lable.text=@"区头1";
    } else if(section==1){
        lable.text=@"区头2";
    }else if(section==2){
        lable.text=@"区头3";
    }

    
    
    return view;
    
    
    
}
//自定义区尾
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    view.backgroundColor=[UIColor yellowColor];
    
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    lable.text=@"区尾";
    lable.textAlignment=NSTextAlignmentCenter;
    [view addSubview:lable];
    return view;
    
    
}

//点击方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"我是第%ld区,第%ld行",(long)indexPath.section+1,(long)indexPath.row+1);
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"电话" message:@"提示" delegate:self cancelButtonTitle:@"开始" otherButtonTitles:@"退出", nil];
    [alert show];
    
}


//可以设置每一行的高度，rowhight属性只能设置统一高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            return 100;
        }
        
        
    }else  if (indexPath.section==1){
        if (indexPath.row==0) {
            return 100;
        }
   
        
    }
    return 44;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
