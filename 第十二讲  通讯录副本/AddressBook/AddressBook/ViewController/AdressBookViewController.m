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
#import "DateBaseManager.h"

#define Kwidth   [UIScreen mainScreen].bounds.size.width


@interface AdressBookViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSArray *grouptitle;
@property(nonatomic, retain) NSMutableArray *allPeople;
@property(nonatomic, retain) AdressBookTableViewCell *cell;

@end

@implementation AdressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"通讯录";
    
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    
    UIBarButtonItem *barleft=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(finish)];
    self.navigationItem.leftBarButtonItem=barleft;
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame  style:UITableViewStylePlain];
//    self.tableView=[[UITableView alloc]initWithFrame:CGRectMake(Kwidth/6, 0, Kwidth*5/6, [UIScreen mainScreen].bounds.size.height)  style:UITableViewStylePlain];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    
    self.tableView.rowHeight=75;
    self.tableView.backgroundColor=[UIColor redColor];
    self.tableView.separatorColor=[UIColor blackColor];
    
    [self.view addSubview:self.tableView];
    
    [self configDate];
    
   
}
-(void)configDate{
    
    NSString *path=[[NSBundle mainBundle]pathForResource:@"AddressBook" ofType:@".plist"];
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    self.grouptitle=dic.allKeys;
    
    self.allPeople=[NSMutableArray new];
    
    for (NSString *key in self.grouptitle) {
        NSMutableArray *group=[[NSMutableArray alloc]init];
        NSArray *arr=dic[key];
        for (NSDictionary *dic in arr) {
           
    AdressBookDateModel *model=[[AdressBookDateModel alloc]initWithDictionary:dic];
            
            [group addObject:model];
            
        }
        [self.allPeople addObject:group];
        
    }
    
    
    
    
}







-(void)finish{
    
    [self.tableView setEditing:NO animated:NO];
    
}


#pragma mark ----数据源

//分区的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.grouptitle.count;
    
}



//分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    //NSLog(@"%ld",section);
    return self.grouptitle[section];
}



//分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableArray *group=self.allPeople[section];
    return group.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *str=@"zhang";
    self.cell=[tableView dequeueReusableCellWithIdentifier:str];
    
    
    if (self.cell == nil) {
        self.cell=[[AdressBookTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        
        
        
    }

   
    
    self.cell.model=self.allPeople[indexPath.section][indexPath.row];
    
   
    
    UILongPressGestureRecognizer *longPress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(detail:)];
    
    [self.cell addGestureRecognizer:longPress];
    
    
    return self.cell;
    
}


-(void)detail:(NSIndexPath *)indexPath{
   
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"修改信息" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *acton1=[UIAlertAction actionWithTitle:@"添加联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"添加联系人");
        
        
        AdressBookDateModel *model=[AdressBookDateModel adressBookDatemodelName:@"张鹏飞" addtel:@"18860233150" gender:@"男" addAge:@"21" andhobby:@"lol"];
        
        
        DateBaseManager *manager=[DateBaseManager sharedInstance];
        
        [manager insertIntoLinkMans:model];
        
        
    }];
    
    UIAlertAction *acton2=[UIAlertAction actionWithTitle:@"删除联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
       
         NSLog(@"删除联系人");
        
        
        
        
        
        DateBaseManager *manager=[DateBaseManager sharedInstance];
        
        [manager deleteLinkMansName:@"张鹏飞"];
        
        
       
        
        
        
        
    }];
    
    UIAlertAction *acton3=[UIAlertAction actionWithTitle:@"修改联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    DateBaseManager *manager=[DateBaseManager sharedInstance];
        
        NSLog(@"修改联系人");

        
        
        [manager updateLinkManPhoneNumber:@"18860233150" withName:@"张鹏飞"];
        
        
        
        
    }];
    

    UIAlertAction *acton4=[UIAlertAction actionWithTitle:@"查询联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"查询联系人");
        
        DateBaseManager *dbmanager=[DateBaseManager sharedInstance];
        NSMutableArray *arr=[[NSMutableArray alloc]init];

        arr=[dbmanager selectAllLinkmansWithGender:@"男"];
        
        for (AdressBookDateModel *model in arr) {
            
            NSLog(@"%@%@%@%@",model.name,model.gendar,model.age,model.tel);
            
        }
        
        
        
    }];
    
    
    
    [alert addAction:acton1];
    [alert addAction:acton2];
    [alert addAction:acton3];
    [alert addAction:acton4];
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
   
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
