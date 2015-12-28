//
//  MangoViewController.m
//  UIArchive（复杂对象的写入）
//
//  Created by scjy on 15/12/17.
//  Copyright © 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
#import "Animal.h"
@interface MangoViewController ()

@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    self.title=@"归档——反归档";
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(30, 100, self.view.frame.size.width-60, 44);
    
    [btn setTitle:@"归档" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor blueColor];
    
    [btn addTarget:self action:@selector(encode:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.tag=1;
    
    
    [self.view addSubview:btn];
    
    
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(30, 300, self.view.frame.size.width-60, 44);
    
    [btn1 setTitle:@"反归档" forState:UIControlStateNormal];
    //给按钮添加tag值
    btn1.tag=2;
    btn1.backgroundColor=[UIColor blueColor];
    [btn1 addTarget:self action:@selector(encode:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    



}

//俩个按钮实现同一个方法，如何判断是点击的那个按钮

//方法一:通过tag值

-(void)encode:(UIButton *)btn{
    
    if (btn.tag==1) {
        
        //归档操作
        /*
         1.归档：是序列化，编码类似于压缩文件
         2.归档：把符合条件的对象转换成NSDate对象
         3.能进行归档的对象，必须遵循NSCoding协议。对象的属性如何是对象类型也必须遵循NSCoding协议。
         */
        
        //复杂对象的归档  Animal->NSDate
        
        //第一步：创建需要归档的Animal对象
        
        Animal *monkey=[[Animal alloc]init];
        
        monkey.name=@"孙悟空";
        monkey.gender=@"男";
        monkey.age=@"五百万年";
        monkey.weight=@"100";
        
        //第二步：创建归档工具对象
        NSMutableData *data=[NSMutableData data];
        
        NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
        
        //第三步：对animal对象进行归档操作
        
        [archiver encodeObject:monkey forKey:@"mokey"];
        
        
        //第四步：结束归档
        
        [archiver finishEncoding];
        
        
        NSLog(@"%@",data);
        
        //将归档得到的NSDate对象存入到沙河中
        
        NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        
        NSString *filepath=[documentpath stringByAppendingPathComponent:@"mokey.da"];
        
        
        NSLog(@"%@",filepath);
        
        //写入
        [data writeToFile:filepath atomically:YES];
        //释放
        [monkey release];
        [archiver release];
        

        
    } else {
        
        NSLog(@"2");
        //反归档
        
        //从沙河中读取归档的NSDate数据
        
        //将归档得到的NSDate对象存入到沙河中
        
        NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        
        NSString *filepath=[documentpath stringByAppendingPathComponent:@"mokey.da"];
        

        NSData *data=[NSData dataWithContentsOfFile:filepath];
        
        
        
               
        
        
        
        //创建反归档对象
        
        
        NSKeyedUnarchiver *unArchiver=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
        
        //第三步：通过反归档得到复杂操作类型对象
        
        Animal *mango=[unArchiver decodeObjectForKey:@"mokey"];
        //第四步：反归档结束
        [unArchiver finishDecoding];
        NSLog(@"%@%@%@%@",mango.name,mango.gender,mango.weight,mango.age);
        

        [unArchiver release];
        
        
    }
    
    
    
}
    
   

//方法二：通过判断按钮的title判断
//- (void)encode:(id)btn{
//    if ([[btn currentTitle] isEqual:@"归档"]) {
//    
//        
//        NSLog(@"归档");
//        
//        
//    }else if ([[btn currentTitle] isEqual:@"反归档"]){
//        
//        
//        NSLog(@"反归档");
//        
//        
//    }
//    
//    
//    
//}




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
