//
//  MangoViewController.m
//  XML和JESON的解析
//
//  Created by scjy on 15/12/22.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "MangoViewController.h"
#import "GDataXMLNode.h"
@interface MangoViewController ()
@property(nonatomic, retain) UIButton *btn;
@property(nonatomic, retain) UIButton *btn1;
@end

@implementation MangoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.title=@"解析";
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
        
        [_btn setTitle:@"XML解析" forState:UIControlStateNormal];
        
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
        
        [_btn1 setTitle:@"DOM解析" forState:UIControlStateNormal];
        
        [_btn1 addTarget:self action:@selector(parser:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_btn1];
        
    }
    
    return _btn;
    
}



-(void)parser:(UIButton *)btn{
    
    
    //1.查找XML的路径
    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"Student" ofType:@".xml"];
    
    //2.用NSDate类型读取
    NSData *data=[NSData dataWithContentsOfFile:filePath];
    

    
    if (btn.tag == 1) {
        NSLog(@"XML解析");
        
        //sax方式解析xml格式的数据，使用NSXMLParser，他是iOS中自带的类
        
        //把XML格式的字符串，从文件中读取为NSData类型，用于解析
               //3.常见XMl解析类
        
        NSXMLParser *xmlParser=[[NSXMLParser alloc]initWithData:data];
        //4.设置协议代理
        xmlParser.delegate=self;
        //5. 开始解析
        BOOL  result=[xmlParser parse];
        
        if (result) {
            NSLog(@"解析成功");
        }else{
            
            NSLog(@"解析失败");
            
        }
        
        
        
        
        
        
    } else if(btn.tag == 2 ) {
        
        NSLog(@"JSESON解析");
        //DOM  解析：在解析之前，将XML文档全部读取，在内存中形成完整的树形结构
        //1.GDateXMLNode解析是基于C语言的libxml2库实现的，因此需要在工程中引入libxml2。tdb的库文件
        //2.在build Setting 的header search path 中添加 /usr/include/libxml2的路径
        
        //3  读取xml格式的字符串
        
        
        
        
        
        
        NSError *error=nil;
        GDataXMLDocument *xmlDocument=[[GDataXMLDocument alloc]initWithData:data options:0 error:&error];
        
        
        
        //4.找到根节点
        
        GDataXMLElement *rootElement=[xmlDocument rootElement];
//        NSLog(@"rootElement=%@",rootElement);
        
        
        //5.找到根节点下边所有的子节点
        
          NSArray *studentArr=[rootElement elementsForName:@"student"];
        
//         NSLog(@"%@",studentArr);
//        
        
        
        NSMutableArray *allStudentArr=[[NSMutableArray alloc]init];
        
        //6.用for循环便利出每个节点
       
        for (int i=0 ; i<studentArr.count; i++) {
            
            GDataXMLElement *stuElement=studentArr[i];
            
            NSLog(@"%@",stuElement);
            
            //7.取出student节点下所有的子节点 number， name， sex， phone
            
            //取student节点下边所有的number节点
            NSArray *numberArr=[stuElement elementsForName:@"number"];
            //因为number节点在student节点下只有一个
            GDataXMLElement *numberElement=numberArr[0];
            //把number节点的数据转化成字符串类型
            NSString *number=[numberElement stringValue];
            
            NSLog(@"%@",number);
            
            
            //取出student节点下的所有name节点
            
            NSArray *nameArr=[stuElement elementsForName:@"name"];
            
            GDataXMLElement *nameElement=nameArr[0];
            
            NSString *name=[nameElement stringValue];
            
            NSLog(@"%@",name);
           
            
            
            
            //性别
            
            NSArray *genderarr=[stuElement elementsForName:@"sex"];
            GDataXMLElement *genderelement=genderarr[0];
            NSString *gender=[genderelement stringValue];
            NSLog(@"%@",gender);
            
            
            //电话
            
            NSArray *phonearr=[stuElement elementsForName:@"phone"];
            GDataXMLElement *phonelement=phonearr[0];
            NSString *phone=[phonelement stringValue];
            NSLog(@"%@",phone);
            
            
            NSDictionary *stuDic=@{@"number":number,@"name":name,@"sex":gender,@"phone":phone};
            
            
            [allStudentArr addObject:stuDic];
            
        }
        
        NSLog(@"allStudentArr=%@",allStudentArr);
        
    }
    
    
}



#pragma mark --- NSXMLParserDelegate代理方法
//文件开始解析的时候调用
- (void)parserDidStartDocument:(NSXMLParser *)parser{
    
     NSLog(@"%s%d",__FUNCTION__,__LINE__);
    
}




- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    
    
    NSLog(@"elementName=%@,attributeDict=%@",elementName,attributeDict);
    
    
    
}


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    
    
    NSLog(@"qName=%@",qName);
    
}



- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    
    NSLog(@"string=%@",string);
    
}






//文件解析完成的时候调用
- (void)parserDidEndDocument:(NSXMLParser *)parser{
    
    NSLog(@"%s%d",__FUNCTION__,__LINE__);
    
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
