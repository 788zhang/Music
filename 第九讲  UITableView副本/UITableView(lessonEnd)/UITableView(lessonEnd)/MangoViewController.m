//
//  MangoViewController.m
//  UITableView(lessonEnd)
//
//  Created by scjy on 15/11/30.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"

@interface MangoViewController ()
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"通讯录";
    
    UIBarButtonItem *bar=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:nil];
    self.navigationItem.leftBarButtonItem=bar;
    
    UIBarButtonItem *btn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    self.navigationItem.rightBarButtonItem=btn;

    
    
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
     self.tableView.rowHeight = 80;
    self.tableView.backgroundColor=[UIColor redColor];
   
    self.tableView.separatorColor=[UIColor blackColor];
    
    [self.view addSubview:self.tableView];
    
    
//数组越界，，可能是数组中元素的逗号或多或少，导致错误。。。为此，，我整了一个晚上
    NSMutableArray *num1=[[NSMutableArray alloc]initWithObjects:@"18860233150",@"18860233163",@"17091615503",@"18860233xxx" ,nil];
    
     NSMutableArray *num2=[[NSMutableArray alloc]initWithObjects:@"18860233262",@"18860233161",@"18860233219",@"18860233xxx" ,nil];
    NSMutableArray *num3=[[NSMutableArray alloc]initWithObjects:@"18860233xxx",@"18860233xxx",@"18860233xxx",@"18860233xxx" ,nil];
    NSMutableArray *num4=[[NSMutableArray alloc]initWithObjects:@"18860233xxx",@"18860233xxx",@"18860233xxx",@"18860233xxx" ,nil];
    
    
    self.allTelArr=[[NSMutableArray alloc]initWithObjects:num1,num2,num3,num4, nil];
    
    //图片不出来，，名字错误
    
    NSMutableArray *pic1=[NSMutableArray arrayWithObjects:@"psb.jpg",@"2.png",@"2.png",@"2.png", nil];
    
    NSMutableArray *pic2=[NSMutableArray arrayWithObjects:@"2.png",@"2.png",@"2.png",@"2.png", nil];
    
    NSMutableArray *pic3=[NSMutableArray arrayWithObjects:@"2.png",@"2.png",@"2.png",@"2.png",  nil];
    
    NSMutableArray *pic4=[NSMutableArray arrayWithObjects:@"2.png",@"2.png",@"2.png",@"2.png",  nil];
    
    self.pic=[[NSMutableArray alloc]initWithObjects:pic1,pic2,pic3,pic4, nil];
    
    NSMutableArray *group1=[[NSMutableArray alloc]initWithObjects:@"张鹏飞", @"乔自朋",@"赵佳慧",@"李志鹏",nil];
    
    NSMutableArray *group2=[[NSMutableArray alloc]initWithObjects:@"韩苇琪", @"练晓俊",@"郭亚茹",@"马娟娟",nil];
    
    NSMutableArray *group3=[[NSMutableArray alloc]initWithObjects:@"严蔚敏", @"王雪娟",@"郭飞飞",@"秦俊珍",nil];
    
    
     NSMutableArray *group4=[[NSMutableArray alloc]initWithObjects:@"范芳芳", @"刘海燕",@"张衡",@"李书明",nil];
    
    self.allGroupArr=[[NSMutableArray alloc]initWithObjects:group1,group2,group3,group4, nil];
    
    
    
}



#pragma mark ----UITableViewDataSource
//返回在一个区域有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray *group=self.allGroupArr[section];
    
    return group.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *celltitle=@"zhang";
   UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:celltitle];
       if (cell == nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:celltitle];
          }
    
    NSMutableArray *group=self.allGroupArr[indexPath.section];
    
    cell.textLabel.text=group[indexPath.row];
    
//    cell.textLabel.text=self.allGroupArr[indexPath.section][indexPath.row];
//
    //NSLog(@"%ld",(long)indexPath.row);
//    NSLog(@"%@",self.allTelArr[indexPath.section]);
    NSMutableArray *group1 = self.allTelArr[indexPath.section];
    
    cell.detailTextLabel.text = group1[indexPath.row];
    
    
   // NSLog(@"%ld",(long)indexPath.row);

     //NSLog(@"%@",self.pic[indexPath.section]);
    //NSLog(@"%@",self.pic[indexPath.section][indexPath.row]);
    
    NSMutableArray *group2 = self.pic[indexPath.section];
   
    NSLog(@"%@",group2[indexPath.row]);
   cell.imageView.image = [UIImage imageNamed:group2[indexPath.row]];

    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return self.allGroupArr.count;
}

//返回每个分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section==0) {
        return @"第一组";
    }else if (section==1){
        return @"第二组";
    }else if (section==2){
        return @"第三组";
    }

    
    return @"第四组";
    
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    NSArray *titleArr=@[@"第一组",@"第二组",@"第三组",@"第四组"];
    return titleArr;
}



#pragma mark ----UITableViewDelegate




- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    ShowViewController *show=[[ShowViewController alloc]init];
    show.str=self.allGroupArr[indexPath.section][indexPath.row];
    show.str1=self.allTelArr[indexPath.section][indexPath.row];
    show.str2=self.pic[indexPath.section][indexPath.row];
    
    [self.navigationController pushViewController:show animated:YES];
    

    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
