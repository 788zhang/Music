//
//  MangoViewController.m
//  UIJSON解析
//
//  Created by scjy on 15/12/23.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "MangoViewController.h"
#import "JSONKit.h"
@interface MangoViewController ()
@property(nonatomic, retain) UIButton *btn;
@property(nonatomic, retain) UIButton *btn1;
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title=@"JESON 解析";
    self.view.backgroundColor=[UIColor redColor];
    
    [self creatXMLButton];
    [self creatJESONButton];
    

    
    
}



-(UIButton *)creatXMLButton{
    
    if (_btn == nil ) {
        _btn=[UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame=CGRectMake(30, 100, self.view.frame.size.width-60, 44);
        _btn.tag=1;
        _btn.backgroundColor=[UIColor blueColor];
        
        [_btn setTitle:@"系统 —JSON解析" forState:UIControlStateNormal];
        
        [_btn addTarget:self action:@selector(parser:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_btn];
        
    }
    
    return _btn;
    
}



-(UIButton *)creatJESONButton{
    
    if (_btn1 == nil ) {
        _btn1=[UIButton buttonWithType:UIButtonTypeCustom];
        _btn1.frame=CGRectMake(30, 200, self.view.frame.size.width-60, 44);
        _btn1.tag=2;
        _btn1.backgroundColor=[UIColor blueColor];
        
        [_btn1 setTitle:@"JSONKit—JSON解析" forState:UIControlStateNormal];
        
        [_btn1 addTarget:self action:@selector(parser:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_btn1];
        
    }
    
    return _btn;
    
}



-(void)parser:(UIButton *)btn{
    //1.从本地读取文件
    
    NSString *path=[[NSBundle mainBundle]pathForResource:@"Student" ofType:@".txt"];
    
    NSData *data=[NSData dataWithContentsOfFile:path];
    
    
    
    if (btn.tag==1) {
        NSLog(@"系统 —JSON解析");
        
        //使用系统提供的类进行JSON解析
        //JSON解析的实质是：JSON格式字符串和Oc数据对象的转换，JSON格式字符串可以和OC中的数据进行相互转化
        
        //将JSON格式的字符串转换为 ——》OC中的数据
        
      //2.将data类型转换成OC的数据
        NSError *error =nil;
        NSArray *allStudentArr=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        
        NSLog(@"%@",allStudentArr);
        
        for (NSDictionary *dic in allStudentArr) {
            NSLog(@"%@",dic[@"name"]);
            NSLog(@"%@",dic[@"number"]);
            NSLog(@"%@",dic[@"sex"]);
        }
        
        
        //OC中的对象转换为JSON格式
        
        NSDictionary *dic1=@{@"name":@"张鹏飞",@"age":@"21",@"number":@"18860233150"};
        
        NSDictionary *dic2=@{@"name":@"乔自朋  ",@"age":@"22",@"number":@"18860233156"};

        NSDictionary *dic3=@{@"name":@"赵佳慧",@"age":@"23",@"number":@"17750233150"};

        
        NSArray *array=@[dic1,dic2,dic3];
        
        //把Oc的数据通过JSOn解析成NSDate类型
        NSData *jsonDAta=[NSJSONSerialization dataWithJSONObject:array options: NSJSONWritingPrettyPrinted error:nil];
        
        //把NSDate类型转换成JSon格式的字符串
        
        NSString *jsonStr=[[NSString alloc]initWithData:jsonDAta encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@",jsonStr);
        
        
        //第一步：创建字符创对象
        
        
        //document的路径
        NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        
        //第二步：构造字符串文件存储路径
        NSString *path=[documentpath stringByAppendingPathComponent:@"/text.text"];
        
        NSLog(@"%@",path);
        
        //第三步：将文件写入指定路径
        [jsonStr writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",path);
        

        
        
        
        
    } else  if (btn.tag==2){
        NSLog(@"JSONKit—JSON解析");
        
        //使用第三方 jsonkit解析
        //jsonkit使用类目实现解析
        //第一种：通过nsdate类型进行json数据的转换
        
        NSArray *studentAllArr=[data objectFromJSONData];
        
        NSLog(@"%@",studentAllArr);
        
        
        for (NSDictionary *dic in studentAllArr) {
            NSLog(@"%@",dic[@"name"]);
            NSLog(@"%@",dic[@"number"]);
            NSLog(@"%@",dic[@"sex"]);
        }

        
         //第二种：通过字符串类型进行json数据转换
        //1.把json格式的字符串转换成nsstring类型的字符串
        
        NSString *str=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        
        NSArray *stus=[str objectFromJSONString];
        
        NSLog(@"%@",stus);
        
        
        
        //OC中的对象转换为JSON格式
        
        NSDictionary *dic1=@{@"name":@"张鹏飞",@"age":@"21",@"number":@"18860233150"};
        
        NSDictionary *dic2=@{@"name":@"乔自朋  ",@"age":@"22",@"number":@"18860233156"};
        
        NSDictionary *dic3=@{@"name":@"赵佳慧",@"age":@"23",@"number":@"17750233150"};
        
        
        NSArray *array=@[dic1,dic2,dic3];
        

        NSString *jsonstr=[array JSONString];
        NSLog(@"%@",jsonstr);
        
        
        
        
        
        
    }
    
    
    
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
