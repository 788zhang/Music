//
//  MangoViewController.m
//  homeWork
//
//  Created by scjy on 15/12/1.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"

@interface MangoViewController ()
@property(nonatomic, retain) UITableView *tableView;
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.title=@"新闻";
    self.tableView=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    //不设置代理就不会显示
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    
    self.tableView.rowHeight=44;
    self.tableView.separatorColor=[UIColor redColor];
    [self.view addSubview:self.tableView];
    
    
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 100;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static   NSString *cellIdentifier=@"CycelCell";

    //去重用队列里取重用标示符为@“CycelCell”的cell
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        
        //切记这里不能重新创建，而是继续使用创建好的cell
        //重用队列里面没有可用的cell，咱们在重新创建一个，然后把新建的cell的重用标示符设为上面定义的重用标示符
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
          }
    
    for (int i=0; i<100; i++) {
        
        if (indexPath.row==i) {
            
            cell.textLabel.text=[NSString stringWithFormat:@"标题%d",i];
            cell.detailTextLabel.text=[NSString stringWithFormat:@"副标题%d",i];
            
            cell.imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];

        
        }

    }
    
    
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
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
