//
//  MangoViewController.m
//  SimpleDateinit
//
//  Created by scjy on 15/12/8.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "MangoViewController.h"
#import "Person.h"
@interface MangoViewController ()

@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
                              
    self.title=@"ios";
    
    
#pragma mark ----找到路径

#pragma mark -----方式1
#pragma mark ---沙河路径
    
    
    
    NSString *homepath=NSHomeDirectory();
    //NSLog(@"沙河路径=%@",homepath);


#pragma mark --获取沙盒中子文件夹路径的方式--拼接路径
    
    //获取document路径
    
    
    NSString *document=[homepath stringByAppendingString:@"/Documents"];
    //NSLog(@"document=%@",document);
    

  //获取Library路径
    
    NSString *library=[homepath stringByAppendingString:@"/Library"];

    //NSLog(@"library=%@",library);
    
#pragma mark -----方式2
    
    //document的路径
    NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    
   // NSLog(@"documentpath=%@",documentpath);
    
    //NSLibraryDirectory（）方法
    NSString *libraryPath=[NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)lastObject];
    
    //NSLog(@"libraryPath=%@",libraryPath);
    //Caches的路径
    
    NSString *CachesPath=[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    //NSLog(@"CachesPath=%@",CachesPath);
    
    
    
    //直接获取Tmp  文件路径
    NSString *tmpPath=NSTemporaryDirectory();
    //NSLog(@"tmpPath=%@",tmpPath);
    
    
    
    //应用程序路径
    //NSLog(@"%@",[[NSBundle mainBundle] resourcePath]);
    
    
    
#pragma mark --简单文件的写入/读取
    
    /*
    简单对象：NSString,NSArray,NSDictionary,NSDate,NSSet
    数据持久化：把文件数据写入文件中，存储到沙盒文件夹里
    NSDate，用于存储二进制数据
     
     */
    
    
#pragma mark----字符串对象的写入和读取
    //第一步：创建字符创对象
    NSString *poem=@"春晓\n 春眠不觉晓，\n处处闻啼鸟，\n夜来风雨声，\n花落知多少";
    
    //第二步：构造字符串文件存储路径
    NSString *path=[documentpath stringByAppendingPathComponent:@"/text.text"];
    
    
    
    //第三步：将文件写入指定路径
    [poem writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",path);

//读取text
    NSString *readText=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"readText=%@",readText);
    
    
    
    
    
#pragma mark -----数组对象写入和读取文件
 //写入
    //第一步：创建数组对象
//    NSArray  *arr=@[@"张鹏飞",@"爱上",@"英雄联盟"];
    NSMutableArray *arr=[NSMutableArray arrayWithObjects:@"张鹏飞",@"爱上",@"英雄联盟", nil];
    //第二步：构造字符串文件存储路径
    NSString *patharr=[documentpath stringByAppendingPathComponent:@"array.plist"];
    
    //第三步：将文件写入指定路径
    
    [arr writeToFile:patharr atomically:YES];
    
    //数组中添加元素,之后重新写入
    [arr addObject:@"写代码"];
    
    [arr writeToFile:patharr atomically:YES];

    
    
    
    NSLog(@"%@",patharr);
    
    
    
    
//读取
    NSString *readArrPlist=[NSString stringWithContentsOfFile:patharr encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"readArrPlist=%@",readArrPlist);
    
    
    
#pragma mark -----字典对象的写入和读取文件
    
    //写入
    //第一步：创建字典对象
  
    NSDictionary *dic=@{@"1":@"张",@"2":@[@"睡觉",@"玩游戏"],@"3":@"飞"};
    
    //第二步：构造字符串文件存储路径
    NSString *pathdic=[documentpath stringByAppendingPathComponent:@"dic.plist"];
    
     //第三步：将文件写入指定路径
    
    [dic writeToFile:pathdic atomically:YES];
    
    NSLog(@"%@",pathdic);
    
//读取
    
    NSString *readDic=[NSString stringWithContentsOfFile:pathdic encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",readDic);
    

    
#pragma mark -----NSDate的写入和读取文件
    
    
    //第一步：创建图片
    UIImage *image=[UIImage imageNamed:@"head_15.jpg"];
    //将图片转换成二进制
    NSData *iamgedate=UIImageJPEGRepresentation(image, 0.5);
    
     //第三步：构造字符串文件存储路径
    NSString *pathImage=[documentpath stringByAppendingPathComponent:@"/date.da"];
    //第四步：写入
    
    [iamgedate writeToFile:pathImage atomically:YES];
     //打印出图片的2进制字节
    //NSLog(@"%@",iamgedate);
    
    
   
   NSLog(@"%@",pathImage);
    
    
//读取：
    
    UIImage *readimage=[UIImage imageWithContentsOfFile:pathImage];
    
    
    NSLog(@"%@",readimage);
    
    
    
//   //练习四：
//    
//    //第一步：创建字典对象
//    
//    NSDictionary *dic1=@{@"1":@"张",@"2":@[@"睡觉",@"玩游戏"],@"3":@"飞"};
//    NSString *downImage=[CachesPath stringByAppendingPathComponent:@"/DownLoadImages"];
//    
//    [dic1 writeToFile:downImage atomically:YES];
//    
//    
//    NSLog(@"%@",downImage);
//    
//    
//    
//    
//    NSString *datapath=[documentpath stringByAppendingPathComponent:@"song.mp3"];
//    
//    NSData *imagedate=[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://box.9ku.com/download.aspx?from=9ku"]];
//    
//    [imagedate writeToFile:datapath atomically:YES];
//    
//    NSLog(@"%@",datapath);
//    
//#pragma mark ----使用NSFileManager来管理文件
//    
//    //1.创建文件夹
//    NSFileManager  *fileManager=[NSFileManager defaultManager];
//    
//    
//    [fileManager createDirectoryAtPath:[poem stringByAppendingString:@"xxx.tex"] withIntermediateDirectories:YES attributes:nil error:nil];
//    
//    NSString *contentStr=nil;
//    if ([fileManager fileExistsAtPath:path]) {
//        contentStr =[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    } else {
//        contentStr =@"哈哈哈....";
//    }
//    
//    //拼接新的字符串
//    contentStr =[contentStr stringByAppendingString:@"\nhahahahhah~~~~"];
//    
//    [contentStr writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
//    
//    NSLog(@"%@",path);
//

    
#pragma mark ----四、复杂对象写入文件
    
    
    
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

-(void)encode:(UIButton *)btn{
    if (btn.tag==1) {
        
        NSLog(@"1");
        //第一步：创建封装的对象 Person->NSDate
        Person *me=[[Person alloc]init];
        
        me.name=@"张鹏飞";
        me.gendar=@"男";
        me.age=@"21";
        me.hobby=@"lol";
        
        NSMutableData *data=[NSMutableData data];
        
        NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
        
        [archiver encodeObject:me forKey:@"me"];
         [archiver finishEncoding];
        
        NSLog(@"%@",data);
        
        NSString *documentpatha=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        
        
        NSString *path=[documentpatha stringByAppendingPathComponent:@"me.da"];
        
        NSLog(@"%@",path);
        
        [data writeToFile:path atomically:YES];
       
        
        
        [me release];
        [archiver release];
        
        
        
    } else {
     
        
//        NSLog(@"2");
//        
//        //第一步：获取 document路径
//        NSString *documentpath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
//        
//        
//        NSString *path=[documentpath stringByAppendingPathComponent:@"me.da"];
//        
//        //第二步：创建反归档工具对象
//        NSData *data=[NSData dataWithContentsOfFile:path];
//        
//        NSKeyedUnarchiver *unarchiver=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
//        
//        //第三步：通过反归档得到复杂操作类型对象
//        Person * zhang=[unarchiver decodeObjectForKey:@"me"];
//        
//         //第四步：反归档结束
//        [unarchiver finishDecoding];
//        
//        
//        NSLog(@"%@%@%@%@",zhang.name,zhang.gendar,zhang.age,zhang.hobby);
//        
//        [unarchiver release];
//        
//        
//        
//        
//        
//    }
//    
//    
    
        
        //从沙河中读取归档的NSDate数据
        
        //将归档得到的NSDate对象存入到沙河中
        
        NSString *documentpatha=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        
        NSString *filepath=[documentpatha stringByAppendingPathComponent:@"me.da"];
        
        
        NSData *data=[NSData dataWithContentsOfFile:filepath];
        
        
        
        
        
        
        
        //创建反归档对象
        
        
        NSKeyedUnarchiver *unArchiver=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
        
        //第三步：通过反归档得到复杂操作类型对象
        
        Person *mango=[unArchiver decodeObjectForKey:@"me"];
        //第四步：反归档结束
        [unArchiver finishDecoding];
        NSLog(@"%@%@%@%@",mango.name,mango.gendar,mango.hobby,mango.age);
        
        
        [unArchiver release];
        
        
    }
    

        
        
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
