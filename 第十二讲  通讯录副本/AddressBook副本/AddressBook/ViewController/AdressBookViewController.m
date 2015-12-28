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
#import "UpdateViewController.h"

#define Kwidth   [UIScreen mainScreen].bounds.size.width


@interface AdressBookViewController ()
@property(nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) NSArray *grouptitle;
@property(nonatomic, retain) NSMutableArray *allPeople;
@property(nonatomic, retain) AdressBookTableViewCell *cell;
@property(nonatomic, retain) NSMutableArray *arr;

//属性
//添加联系人
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *hobby;
@property(nonatomic, retain) NSString *age;
@property(nonatomic, retain) NSString *tel;
@property(nonatomic, retain) NSString *gender;
@property(nonatomic, retain) NSString *imagePath;

@property(nonatomic, retain) NSString *deleteName;

@end

@implementation AdressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"通讯录";
    
   
    
    UIBarButtonItem *barleft=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(finish)];
    self.navigationItem.leftBarButtonItem=barleft;
    
    
    UIBarButtonItem *barright=[[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(detail:)];
    
    
    
    self.navigationItem.rightBarButtonItem=barright;
    
    
    self.automaticallyAdjustsScrollViewInsets = YES;
    //self.tableView=[[UITableView alloc]initWithFrame:self.view.frame  style:UITableViewStylePlain];
    self.tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, Kwidth, [UIScreen mainScreen].bounds.size.height)  style:UITableViewStylePlain];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    self.tableView.rowHeight=85;
    self.tableView.backgroundColor=[UIColor redColor];
    self.tableView.separatorColor=[UIColor blackColor];
    
    [self.view addSubview:self.tableView];
    
    
    
    
    
    
   
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    DateBaseManager *dbmanager=[DateBaseManager sharedInstance];
    self.arr=[[NSMutableArray alloc]init];
    
    
    
    self.arr=[dbmanager selectAllLinkmans];
    
    
    
    
}


- (void)UpdateviewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    DateBaseManager *dbmanager=[DateBaseManager sharedInstance];
    self.arr=[[NSMutableArray alloc]init];
    
 
   
    self.arr=[dbmanager selectAllLinkmans];
    
    
   
    
}








-(void)finish{
    
    [self.tableView setEditing:NO animated:NO];
    
}


#pragma mark ----数据源

//分区的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}



//分区的标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    //NSLog(@"%ld",section);
    return @"联系人";
}



//分区的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
   
    return self.arr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *str=@"zhang";
    self.cell=[tableView dequeueReusableCellWithIdentifier:str];
    
    
    if (self.cell == nil) {
        self.cell=[[AdressBookTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        
        
        
    }

   
    self.cell.model=self.arr[indexPath.row];
    
   UIImage *readimage=[UIImage imageWithContentsOfFile:self.imagePath];
    
    
    NSLog(@"%@",readimage);
    
    self.cell.imageView.image=readimage;
    
    
    
    
    UILongPressGestureRecognizer *longPress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(detail:)];
    
    [self.cell addGestureRecognizer:longPress];
    
    
    return self.cell;
    
}


- (void)getTextName:(NSString *)name andGender:(NSString *)gender andAge:(NSString *)age andTel:(NSString *)tel andHobby:(NSString *)hobby andimageName:(NSString *)imageName{
    
    self.name=name;
    self.gender=gender;
    self.age=age;
    self.tel=tel;
    self.hobby=hobby;
    //图片路径,,有数据
    self.imagePath=imageName;
    
    NSLog(@"%@",imageName);
    
    
    
    AdressBookDateModel *model=[AdressBookDateModel adressBookDatemodelName:self.name   addtel:self.tel     gender:self.gender addAge:self.age andhobby:self.hobby andImageName:self.imagePath];
    
    
    DateBaseManager *manager=[DateBaseManager sharedInstance];
    
    [manager insertIntoLinkMans:model];
    
    [self UpdateviewWillAppear:YES];
    
    [self.tableView reloadData];
    
    
}


-(void)detail:(NSIndexPath *)indexPath{
   
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"修改信息" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *acton1=[UIAlertAction actionWithTitle:@"添加联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"添加联系人");
        
        
        UpdateViewController *updateView=[[UpdateViewController alloc]init];
        updateView.delegate=self;
        
        
         [self.navigationController pushViewController:updateView animated:YES];
        
        
        
        
        
        

        
       
        
    }];
    
    UIAlertAction *acton2=[UIAlertAction actionWithTitle:@"删除全部联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
       
         NSLog(@"删除联系人");
        
        
        
        
        
        DateBaseManager *manager=[DateBaseManager sharedInstance];
        
        [manager deleteLinkMan];
        
        
        [self viewDidLoad];
       
        
       
        
        
    }];
    
    UIAlertAction *acton3=[UIAlertAction actionWithTitle:@"修改联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    DateBaseManager *manager=[DateBaseManager sharedInstance];
        
        NSLog(@"修改联系人");

        
        
        [manager updateLinkManPhoneNumber:@"18860233150" withName:@"张鹏飞"];
        
         [self viewDidLoad];
        
        
    }];
    

    UIAlertAction *acton4=[UIAlertAction actionWithTitle:@"查询联系人" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"查询联系人");
        
        DateBaseManager *dbmanager=[DateBaseManager sharedInstance];
        self.arr=[[NSMutableArray alloc]init];

        self.arr=[dbmanager selectAllLinkmans];
        
        for (AdressBookDateModel *model in self.arr) {
            
            NSLog(@"%@%@%@%@%@",model.name,model.gendar,model.age,model.tel,model.imageName);
            
        }
        
         [self viewDidLoad];
        
    }];
    
    UIAlertAction *acton5=[UIAlertAction actionWithTitle:@"刷新" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"刷新");
        
        
        
        
        
        [self viewDidLoad];
        
        
        
        
        
    }];

    
    [alert addAction:acton1];
    [alert addAction:acton2];
    [alert addAction:acton3];
    [alert addAction:acton4];
    [alert addAction:acton5];
    
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
    a.model=self.arr[indexPath.row];
    

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
