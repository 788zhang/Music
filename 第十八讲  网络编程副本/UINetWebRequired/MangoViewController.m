//
//  MangoViewController.m
//  UINetWebRequired
//
//  Created by scjy on 15/12/23.
//  Copyright © 2015年 scjy. All rights reserved.
//

#import "MangoViewController.h"

//第一步：引入头文件
#import "UINetWorkEngine.h"
//第二部：遵循协议
@interface MangoViewController ()<NetWorkEngineDelegate>

@end

@implementation MangoViewController




//第三步：实现代理方法

- (void)netWorkDidStartLoading:(UINetWorkEngine *)netWorkEngine{
   
    NSLog(@"网络开始请求");
    
}
//请求结束
- (void)netWorkDidFinishLoading:(UINetWorkEngine *)netWorkEngine withResponseObject:(id)responseObject{
    
    NSLog(@"%@",responseObject);
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title=@"网络请求";
    self.view.backgroundColor=[UIColor redColor];
    
    
    
//    //GET请求
//    UINetWorkEngine *netWorkEngine=[UINetWorkEngine netWorkEngineWithUrlString:@"http://c.m.163.com/nc/article/AQETUMR200014OMD/full.html" parameters:nil requestDelegate:self httpMethodType:NetWorkEngineTypeGET];
//    
//    
//    [netWorkEngine startRequestNetWork];
    
    
    
    //Posthttp://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx?date=20131129&startRecord=1&len=5&udid=1234567890&terminalType=Iphone&cid=213
    
    UINetWorkEngine *networkEnginePost=[UINetWorkEngine netWorkEngineWithUrlString:@"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx?" parameters:@{@"date":@"20131129",@"startRecord":@"1",@"len":@"5",@"udid":@"1234567890",@"terminalType":@"Iphone",@"cid":@"213"} requestDelegate:self httpMethodType:NetWorkEngineTypePOST];
    
    [networkEnginePost startRequestNetWork];
    
    
    
    
    [self config];
    
    
}

-(void)config{
    
    NSLog(@"null");
    
    
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
