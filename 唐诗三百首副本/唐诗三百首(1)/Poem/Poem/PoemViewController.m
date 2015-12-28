//
//  PoemViewController.m
//  Poem
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import "PoemViewController.h"
#import "PoemTableViewCell.h"
#import "PoemModal.h"
#import "TwoPoemViewController.h"

@interface PoemViewController ()

@property(nonatomic,retain) UITableView *tableView;

@property(nonatomic,retain) NSMutableArray *allName;

@end

@implementation PoemViewController

- (void)dealloc{
    [_tableView release];
    [_allName release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"唐诗三百首";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.rowHeight = 50;
    
    UIImageView *view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    [self.tableView setBackgroundView:view];
    
    
    [self.view addSubview:self.tableView];
    [self.tableView release];
    [self configTableData];
    
}

- (void)configTableData{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"tangshi" ofType:@".plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *array = dic[@"section"];
    self.allName = [NSMutableArray new];
    for (NSString *key in array) {
        PoemModal *modal = [[PoemModal alloc] initWithName:key];
        [self.allName addObject:modal];
        
    }
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allName.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIndentifier = @"cell";
    PoemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (cell == nil) {
        cell = [[PoemTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIndentifier];
    }
    cell.backgroundColor = [UIColor clearColor];
    
    PoemModal *modal = self.allName[indexPath.row];
    cell.modal = modal;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TwoPoemViewController *two = [[TwoPoemViewController alloc] init];
    two.modal = self.allName[indexPath.row];
    [self.navigationController pushViewController:two animated:YES];
    
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
