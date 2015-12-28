//
//  MangoViewController.m
//  UIMixCell
//
//  Created by scjy on 15/12/2.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
#import "FirstTableViewCell.h"
#import "TwoTableViewCell.h"
@interface MangoViewController ()
@property(nonatomic, retain) UITableView *tableview;
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"cell";
    self.tableview=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tableview.dataSource=self;
    self.tableview.delegate=self;
    self.tableview.separatorColor=[UIColor blackColor];
    [self.view addSubview:self.tableview];


}



#pragma mark -----UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if (indexPath.row % 2 !=0) {
        //奇数
        static NSString *cellID=@"zhang";
        FirstTableViewCell *firstcell=[tableView dequeueReusableCellWithIdentifier:cellID];
        if (firstcell ==nil) {
            firstcell=[[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
        }
        
        return firstcell;
    }
    
   
        //奇数
        static NSString *twocellID=@"twoCell";
        TwoTableViewCell *twocell=[tableView dequeueReusableCellWithIdentifier:twocellID];
        if (twocell ==nil) {
            twocell=[[TwoTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:twocellID];
        }
        
        return twocell;
 

    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
