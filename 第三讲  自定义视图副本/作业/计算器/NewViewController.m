//
//  NewViewController.m
//  HomeView
//
//  Created by scjy on 15/11/20.
//  Copyright (c) 2015年 芒果iOS. All rights reserved.
//

#import "NewViewController.h"
#import "LTnewView.h"
#define kweight self.view.frame.size.width
#define Kheight self.view.frame.size.height
@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        self.view.backgroundColor = [UIColor clearColor];
//显示结果
    
    
    
    
    UILabel *lable1=[[UILabel alloc]initWithFrame:CGRectMake(0, 20, kweight, 30)];
    lable1.backgroundColor=[UIColor orangeColor];
    
    lable1.text=@"张鹏飞";
    lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable1];
    
    _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 150)];
    _label.textAlignment=NSTextAlignmentRight;
    _label.textColor=[UIColor redColor];
    _label.font=[UIFont systemFontOfSize:34];
    _label.backgroundColor=[UIColor grayColor];
    
    
    [self.view addSubview:_label];
    
//第一行
    LTnewView *hang1 = [[LTnewView alloc]initWithFrame:CGRectMake(0, 200, kweight,Kheight/2)];
    NSLog(@"%f",Kheight/2);
    
    [hang1.button1 setTitle:@"0"forState:UIControlStateNormal];
    [hang1.button1 addTarget:self action:@selector(num0:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [hang1.button2 setTitle:@"/" forState:UIControlStateNormal];
    [hang1.button2 addTarget:self action:@selector(numequal:) forControlEvents:UIControlEventTouchUpInside];
    [hang1.button3 setTitle:@"."forState:UIControlStateNormal];
    
    [hang1.button3 addTarget:self action:@selector(numpoint:) forControlEvents:UIControlEventTouchUpInside];
    [hang1.button4 setTitle:@"清除" forState:UIControlStateNormal];
    [hang1.button4 addTarget:self action:@selector(numclean:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hang1];
    
    
//第二行
    LTnewView *hang2 = [[LTnewView alloc]initWithFrame:CGRectMake(0, 285, kweight, 333.50)];
    
    [hang2.button1 setTitle:@"7"forState:UIControlStateNormal];
    [hang2.button1 addTarget:self action:@selector(num7:) forControlEvents:UIControlEventTouchUpInside];
    
    [hang2.button2 setTitle:@"8" forState:UIControlStateNormal];
    [hang2.button2 addTarget:self action:@selector(num8:) forControlEvents:UIControlEventTouchUpInside];
    [hang2.button3 setTitle:@"9"forState:UIControlStateNormal];
    [hang2.button3 addTarget:self action:@selector(num9:) forControlEvents:UIControlEventTouchUpInside];
    [hang2.button4 setTitle:@"x" forState:UIControlStateNormal];
    [hang2.button4 addTarget:self action:@selector(numequal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hang2];
//第三行
    LTnewView *hang3 = [[LTnewView alloc]initWithFrame:CGRectMake(0, 370, kweight, 333.50)];
    [hang3.button1 setTitle:@"4"forState:UIControlStateNormal];
    [hang3.button1 addTarget:self action:@selector(num4:) forControlEvents:UIControlEventTouchUpInside];
    
    [hang3.button2 setTitle:@"5" forState:UIControlStateNormal];
    [hang3.button2 addTarget:self action:@selector(num5:) forControlEvents:UIControlEventTouchUpInside];
    
    [hang3.button3 setTitle:@"6"forState:UIControlStateNormal];
    [hang3.button3 addTarget:self action:@selector(num6:) forControlEvents:UIControlEventTouchUpInside];
    [hang3.button4 setTitle:@"-" forState:UIControlStateNormal];
    [hang3.button4 addTarget:self action:@selector(numequal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hang3];
//第四行
    LTnewView *hang4 = [[LTnewView alloc]initWithFrame:CGRectMake(0, 455, kweight, 333.50)];
    [hang4.button1 setTitle:@"1"forState:UIControlStateNormal];
    
    [hang4.button1 addTarget:self action:@selector(num1:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [hang4.button2 setTitle:@"2" forState:UIControlStateNormal];
    [hang4.button2 addTarget:self action:@selector(num2:) forControlEvents:UIControlEventTouchUpInside];
    [hang4.button3 setTitle:@"3"forState:UIControlStateNormal];
    [hang4.button3 addTarget:self action:@selector(num3:) forControlEvents:UIControlEventTouchUpInside];
    [hang4.button4 setTitle:@"+" forState:UIControlStateNormal];
    [hang4.button4 addTarget:self action:@selector(numequal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hang4];
    
    
    UIButton *sumbtn=[UIButton buttonWithType:0];
    sumbtn.frame=CGRectMake(0, 541, kweight, 122);
    [sumbtn setTitle:@"=" forState:UIControlStateNormal];
    [sumbtn setBackgroundColor:[UIColor orangeColor]];
    [sumbtn addTarget:self action:@selector(numequal:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sumbtn];
    
    
    self.string=[[NSMutableString alloc]init];//初始化可变字符串，分配内存
    self.str = [[NSString alloc]init];
    
   
    
    
    
}

-(void)numequal:(id)sender{
  
    if ([self.str isEqualToString:@""])//当str里为空
    {
        self.num2=self.num1;
        NSLog(@"self.num2  is  %f",self.num2);
        self.label.text=[NSString stringWithString:_string];     //只要是符号就显示数值
        [self.string setString:@""];                             //字符串清零
        self.str=[sender currentTitle];                          //保存运算符为了作判断作何种运算
        NSLog(@"%@",_str);
        [self.string appendString:self.str];
        self.label.text=[NSString stringWithString:_string];     //显示数值
        [self.string setString:@""];          //字符串清零
    }
    else
    {
        //输出上次计算结果
        if ([self.str isEqualToString:@"+"])//之前的符号是+
        {
            [self.string setString:@""];//字符串清零
            self.num2+=self.num1;//num2是运算符号左边的数值，还是计算结果
            
            //输出上次结果后判断这次输入的是何符号
            if ([[sender currentTitle]isEqualToString:@"="])
            {
                NSLog(@"self.num2 is %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                self.str=@"";
            }
            else if ([[sender currentTitle]isEqualToString:@"+"]||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"x"]||[[sender currentTitle]isEqualToString:@"/"])
            {
                NSLog(@"self.num2 is %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                [self.string setString:@""];   //字符串清零
                self.str=[sender currentTitle];//保存运算符为了作判断作何种运算
                NSLog(@"%@",_str);
                [self.string appendString:self.str];
                [self.string setString:@""];//字符串清零
            }
        }
        
        else if ([self.str isEqualToString:@"-"])//之前的符号是-
        {
            [self.string setString:@""];//字符串清零
            self.num2-=self.num1;
            //输出上次结果后判断这次输入的是何符号
            if ([[sender currentTitle]isEqualToString:@"="])
            {
                NSLog(@"self.num2  is  %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                self.str=@"";
            }
            else if ([[sender currentTitle]isEqualToString:@"+"]||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"x"]||[[sender currentTitle]isEqualToString:@"/"])
            {
                NSLog(@"self.num2  is  %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                [self.string setString:@""];//字符串清零
                self.str=[sender currentTitle];//保存运算符为了作判断作何种运算
                NSLog(@"%@",_str);
                [self.string appendString:self.str];
                [self.string setString:@""];//字符串清零
            }
        }
        
        else if([self.str hasPrefix:@"x"])//之前的符号是*   hasPrefix:方法的功能是判断创建的字符串内容是否以某个字符开始
        {
            [self.string setString:@""];//字符串清零
            self.num2*=self.num1;
            //输出上次结果后判断这次输入的是何符号
            if ([[sender currentTitle] isEqualToString:@"="])
            {
                NSLog(@"self.num2 is %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                self.str=@"";
            }
            else if ([[sender currentTitle]isEqualToString:@"+"]||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"x"]||[[sender currentTitle]isEqualToString:@"/"])
            {
                NSLog(@"self.num2 is %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                [self.string setString:@""];          //字符串清零
                self.str=[sender currentTitle];       //保存运算符为了作判断作何种运算
                NSLog(@"%@",_str);
                [self.string appendString:self.str];  //在字符串后增加新的东西，［a appendString:]
                [self.string setString:@""];          //字符串清零
            }
        }
        
        else if ([self.str isEqualToString:@"/"])//之前的符号是/
        {
            [self.string setString:@""];//字符串清零
            self.num2/=self.num1;
            //判断输出上次结果后判断这次输入的是何符号
            if ([[sender currentTitle]isEqualToString:@"="])
            {
               
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                self.str=@"";
            }
            else if ([[sender currentTitle]isEqualToString:@"+"]||[[sender currentTitle]isEqualToString:@"-"]||[[sender currentTitle]isEqualToString:@"x"]||[[sender currentTitle]isEqualToString:@"/"])
            {
                NSLog(@"self.num2  is  %f",self.num2);
                self.label.text=[NSString stringWithFormat:@"%.1f",self.num2];
                [self.string setString:@""];//字符串清零
                self.str=[sender currentTitle];//保存运算符为了作判断作何种运算
                NSLog(@"%@",_str);
                [self.string appendString:self.str];
                [self.string setString:@""];//字符串清零
            }
            
        }
    }
    
    
    
    
}


- (void)num1:(UIButton *)btn{
    [self.string appendFormat:@"1"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
    
    
}
- (void)num2:(UIButton *)btn{
    [self.string appendFormat:@"2"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
    
}
- (void)num3:(UIButton *)btn{
    [self.string appendFormat:@"3"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];

    
}
- (void)num4:(UIButton *)btn{
    [self.string appendFormat:@"4"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];

    
}
- (void)num5:(UIButton *)btn{
    [self.string appendFormat:@"5"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];

    
}
- (void)num6:(UIButton *)btn{
    [self.string appendFormat:@"6"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
    
}
- (void)num7:(UIButton *)btn{
    [self.string appendFormat:@"7"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
}
- (void)num8:(UIButton *)btn{
    [self.string appendFormat:@"8"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
}
- (void)num9:(UIButton *)btn{
    [self.string appendFormat:@"9"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];
     NSLog(@"self.num1  is  %f",self.num1);
    
}
- (void)num0:(UIButton *)btn{
    [self.string appendFormat:@"0"];
    self.label.text=[NSString stringWithString:_string];
    self.num1=[self.label.text doubleValue];

    
}
//- (void)numadd:(UIButton *)btn{
//    [self.string setString:@""];//字符串清零
//    self.num2+=self.num1;//num2是运算符号左边的数值，还是计算结果
//}
//- (void)numsub:(UIButton *)btn{
//    _label.text=@"-";
//    
//}
//- (void)nummul:(UIButton *)btn{
//    _label.text=@"x";
//    
//}
//- (void)numdiv:(UIButton *)btn{
//    _label.text=@"/";
//    
//}
- (void)numclean:(UIButton *)btn{
    [self.string setString:@""];//清空字符
    self.num1=0;
    self.num2=0;
    self.label.text=@"0";//保证下次输入时清零
    
}
- (void)numpoint:(UIButton *)btn{
    [self.string appendString:@"."];      //数字连续输入
    self.label.text=[NSString stringWithString:_string];   //显示数值
    self.num1=[self.label.text doubleValue];               //保存输入的数值
    NSLog(@"self.num1  is  %f",self.num1);
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }


@end
