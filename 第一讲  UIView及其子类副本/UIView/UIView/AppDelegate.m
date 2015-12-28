//
//  AppDelegate.m
//  UIView
//
//  Created by scjy on 15/11/18.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

//应用程序启动之后进入此方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /**
    //初始化UIWindow对象，并且设置window的大小
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    // Override point for customization after application launch.
    //应用程序启动之后书写自定义代码（咱们自己写的代码）的位置
    
    //UIViewController创建的颜色默认是透明的
    //实列对象
    FirstViewController *rootVC=[[FirstViewController alloc]init];
    //把rootVC作为window的根视图
    self.window.rootViewController=rootVC;
    self.window.backgroundColor = [UIColor redColor];//rootVC引用计数为2
    [rootVC release];
    
    //练习要求：在练习1的基础上创建两个视图
    //1、一个背景颜色设置为黄色(yellowView)，一个背景颜色设置为绿色(greenView)。
    //2、将视图添加到window上面。
    UIView *yellow=[[UIView alloc]initWithFrame:CGRectMake(50, 150, 280, 125)];
    
    yellow.backgroundColor=[UIColor yellowColor];
    
    [self.window addSubview:yellow];
    [yellow release];
    
    
    //创建视图基本步骤
    //1.分配内存空间大小，并且初始化设置视图大小
    UIView *blue=[[UIView alloc]initWithFrame:CGRectMake(50, 275,280,125)];
    //2.视图的基本设置，设置背景颜色
    blue.backgroundColor=[UIColor blueColor];
    //3.将视图添加到window上去
    [self.window addSubview:blue];
    //4.释放我们创建的对象
    [blue release];
    
    UIView *green=[[UIView alloc]initWithFrame:CGRectMake(30, 30, 140, 62)];
    green.backgroundColor=[UIColor greenColor];
    
 
    [blue addSubview:green];//
    
    
    
    [green release];
    ***/
    /***
     //frame:     坐标系         分辨率
     3.5寸屏幕     320  *  480      640*960（2倍）
     4寸屏幕       320  *  568      640*1136
     4.7寸屏幕     375  *  667      750*1334
     5.5寸屏幕     414  *  736      1242*2208（3倍）
     7.9寸屏幕     384  *  512      769*1024
     9.7寸屏幕     768  *  1024     1536*2048
     1.9寸屏幕     1366 *  1024     2732*2048
     
          ****/
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    // Override point for customization after application launch.
    //应用程序启动之后书写自定义代码（咱们自己写的代码）的位置
    
    //UIViewController创建的颜色默认是透明的
    //实列对象
    FirstViewController *rootVC=[[FirstViewController alloc]init];
    //把rootVC作为window的根视图
    self.window.rootViewController=rootVC;
    self.window.backgroundColor = [UIColor redColor];//rootVC引用计数为2
    [rootVC release];
    
    //练习要求：在练习1的基础上创建两个视图
    //1、一个背景颜色设置为黄色(yellowView)，一个背景颜色设置为绿色(greenView)。
    //2、将视图添加到window上面。
    UIView *yellow=[[UIView alloc]initWithFrame:CGRectMake(50, 150,300, 300)];
    
    yellow.backgroundColor=[UIColor yellowColor];
    
    [self.window addSubview:yellow];
    [yellow release];
    
    UIView *pink=[[UIView alloc]initWithFrame:CGRectMake(0, 0,250, 250)];
    
   pink.backgroundColor=[UIColor purpleColor];
   pink.center=CGPointMake(150, 150);
    
  
    [yellow addSubview:pink];
    [pink release];

    
    
    
    
    
    UIView *blue=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 150,150)];
    
    blue.backgroundColor=[UIColor blueColor];
    //中心点是基于父视图来说的，当中心点改变之后，在父视图上找到新的中心点，然后把子视图平移过去
    //blue.center=CGPointMake(100,50);
    //把原来的父视图0，0点修改为-50，-50，然后再找(50, 50, 150,150)]这个点的位置
    
      blue.center=CGPointMake(125,125 );
    
    [pink addSubview:blue];
    [blue release];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.zhang.UIView" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"UIView" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"UIView.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
