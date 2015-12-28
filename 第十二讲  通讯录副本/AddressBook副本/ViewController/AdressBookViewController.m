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

@interface AdressBookViewController ()
@property(nonatomic, retain) UITableView *tableView;
@end

@implementation AdressBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"通讯录";
    
    
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame  style:UITableViewStylePlain];
    
    
    self.tableView.separatorColor=[UIColor blackColor];
    
    [self.view addSubview:self.tableView];
    
    [self configDate];
    
   
}
-(void)configDate{
    
    NSString *path=[[NSBundle mainBundle]pathForResource:@"AddressBook" ofType:@".plist"];
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    
    self.allgroupArr=dic.allKeys;
    
    
    
    
    
}

#pragma mark ----数据源

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *str=@"zhang";
    AdressBookTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:str];
    
    
    if (cell == nil) {
        cell=[[AdressBookTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        
        
    }
    
    
    
    
    return cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
