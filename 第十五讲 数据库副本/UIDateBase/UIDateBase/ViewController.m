//
//  ViewController.m
//  UIDateBase
//
//  Created by scjy on 15/12/18.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "ViewController.h"
#import "DateBaseManager.h"
#import "LinkMan.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"数据库";
    self.view.backgroundColor=[UIColor redColor];
    
    
    
    
    DateBaseManager *dbmanager=[DateBaseManager sharedInstance];
    
    //打开数据库
    [dbmanager openDateBase];
    
    
    
    
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 100, self.view.frame.size.width-60, 44);
    
    [btn setTitle:@"添加联系人" forState:UIControlStateNormal];
    btn.tag=1;
    [btn addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn];
    
    
    
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(30, 200, self.view.frame.size.width-60, 44);
    btn1.tag=2;
    [btn1 setTitle:@"根据姓名删除联系人" forState:UIControlStateNormal];
    
    [btn1 addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn1.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn1];

    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame=CGRectMake(30, 300, self.view.frame.size.width-60, 44);
    btn2.tag=3;
    [btn2 setTitle:@"删除全部联系人" forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn2.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn2];

    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame=CGRectMake(30, 400, self.view.frame.size.width-60, 44);
    btn3.tag=4;
    [btn3 setTitle:@"修改联系人" forState:UIControlStateNormal];
    
    [btn3 addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn3.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn3];

    UIButton *btn4=[UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame=CGRectMake(30, 500, self.view.frame.size.width-60, 44);
    btn4.tag=5;
    [btn4 setTitle:@"查询全部联系人" forState:UIControlStateNormal];
    
    [btn4 addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn4.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn4];

    
    
    UIButton *btn5=[UIButton buttonWithType:UIButtonTypeCustom];
    btn5.frame=CGRectMake(30, 600, self.view.frame.size.width-60, 44);
    btn5.tag=6;
    [btn5 setTitle:@"根据性别查询联系人" forState:UIControlStateNormal];
    
    [btn5 addTarget:self action:@selector(addLinkMans:) forControlEvents:UIControlEventTouchUpInside];
    
    btn5.backgroundColor=[UIColor blueColor];
    [self.view addSubview: btn5];

    
}


-(void)addLinkMans:(UIButton *)btn{
    
     DateBaseManager *dbManager=[DateBaseManager sharedInstance];
    
    if (btn.tag == 1) {
        NSLog(@"添加联系人");
        LinkMan *linkman=[LinkMan linkManWithName:@"张鹏飞" andPhoneNumber:@"18860233150" gender:@"男" age:21 remarks:@"自己"];
        
        LinkMan *linkman1=[LinkMan linkManWithName:@"乔自朋" andPhoneNumber:@"18860233156" gender:@"男" age:21 remarks:@"舍友，同学"];
        
        LinkMan *linkman3=[LinkMan linkManWithName:@"兰博基尼" andPhoneNumber:@"999999" gender:@"男" age:21 remarks:@"车"];
        

        
        
        
        
        [dbManager insertIntoLinkMans:linkman];
        [dbManager insertIntoLinkMans:linkman1];
        [dbManager insertIntoLinkMans:linkman3];

        

    }else if (btn.tag == 2){
        
        
        [dbManager deleteLinkMansName:@"张鹏飞"];
        
        NSLog(@"根据姓名删除联系人");
        
        
    }else if(btn.tag==3){
        
        NSLog(@"删除全部联系人");
        
        
        [dbManager deleteLinkMans];
        
        
    }else if (btn.tag == 4){
        
        
        NSLog(@"修改联系人");
        
        [dbManager updateLinkManPhoneNumber:@"110" withName:@"张鹏飞"];
        
        
        
        
        
        
        
    }else if (btn.tag == 5){
        NSMutableArray *arr=[[NSMutableArray alloc]init];
        
        NSLog(@"查询全部联系人");
        arr=[dbManager selectAllLinkmans];
        
        
        for (LinkMan *linkman in arr) {
           
            NSLog(@"姓名=%@，性别=%@，年龄=%ld，电话=%@，爱好=%@",linkman.name,linkman.gender,(long)linkman.age,linkman.phonenumber,linkman.Remarks);
            
        }
        
        
        
    }else if (btn.tag==6){
        NSLog(@"根据性别查询联系人");
        NSMutableArray *arr=[[NSMutableArray alloc]init];
        
      arr =[dbManager selectAllLinkmansWithGender:@"男"];
        
        for (LinkMan *linkman in arr) {
            NSLog(@"姓名=%@，性别=%@，年龄=%ld，电话=%@，爱好=%@",linkman.name,linkman.gender,(long)linkman.age,linkman.phonenumber,linkman.Remarks);
        }
        
        
    }
    
    
    [dbManager closeDateBase];
    
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
