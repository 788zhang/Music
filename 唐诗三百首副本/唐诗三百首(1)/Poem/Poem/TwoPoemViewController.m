//
//  TwoPoemViewController.m
//  Poem
//
//  Created by scjy on 15/12/6.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import "TwoPoemViewController.h"
#import "PoemTableViewCell.h"
#import "ThreePoemViewController.h"

@interface TwoPoemViewController ()
@property(nonatomic,retain) UITableView *tableView;
@property(nonatomic,retain) NSMutableArray *allName;


@end

@implementation TwoPoemViewController

- (void)dealloc{
    [_tableView release],_tableView = nil;
    [_allName release],_allName = nil;
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.navigationItem.title = @"唐诗三百首";
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    UIImageView *view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2.png"]];
    [self.tableView setBackgroundView:view];
    self.tableView.rowHeight = 50;
    [self.view addSubview:self.tableView];
    [self.tableView release];
    [self path];
    
}

- (void)path{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tangshi" ofType:@".plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSDictionary *array = dic[@"index"];
    NSMutableArray *name = array[self.modal.poemName];
    self.allName = [NSMutableArray new];
    for (NSString *key in name) {
        PoemModal *modal = [[PoemModal alloc]initWithName:key];
        [self.allName addObject:modal];
    }
    self.dict = [NSDictionary new];
    self.dict = dic[@"content"];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allName.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIndertifier = @"cell";
    PoemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndertifier];
    if (cell == nil) {
        cell = [[PoemTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIndertifier];
    }
    cell.backgroundColor = [UIColor clearColor];
    PoemModal *modal = self.allName[indexPath.row];
    
    
    cell.modal = modal;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ThreePoemViewController *three = [[ThreePoemViewController alloc] init];
    three.modal = self.allName[indexPath.row];
    three.dict = self.dict;
    [self.navigationController pushViewController:three animated:YES];
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
