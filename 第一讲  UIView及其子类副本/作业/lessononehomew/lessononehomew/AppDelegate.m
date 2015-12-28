//
//  AppDelegate.m
//  lessononehomew
//
//  Created by scjy on 15/11/18.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    /*练习要求：新建一个工程，创建5个视图(aView、bView、cView、dView、eView)
    1、window用addSubview:方法先后添加aView和bView。
    2、window用insertSubview:atIndex:方法把cView添加到aView和bView之间。
    3、window用insertSubview:aboveSubview:方法把dView添加到aView的上面。
    4、window用insertSubview:belowSubview:方法把eView添加到bView的下面。
    */
    
    MainViewController *mainview=[[MainViewController alloc]init];
    self.window.rootViewController=mainview;
    
    [mainview release];
    
    
    UIView *aView=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    aView.backgroundColor=[UIColor blueColor];
    
    
    UIView *bView=[[UIView alloc]initWithFrame:CGRectMake(70, 70, 300, 300)];
    bView.backgroundColor=[UIColor yellowColor];

    UIView *cView=[[UIView alloc]initWithFrame:CGRectMake(90, 90, 300, 300)];
    cView.backgroundColor=[UIColor purpleColor];

    
    UIView *dView=[[UIView alloc]initWithFrame:CGRectMake(110, 110, 300, 300)];
    dView.backgroundColor=[UIColor redColor];

    
    UIView *eView=[[UIView alloc]initWithFrame:CGRectMake(110, 110, 300, 300)];
    eView.backgroundColor=[UIColor grayColor];
    
    [self.window addSubview:aView];
    [self.window addSubview:bView];
    [bView addSubview:cView];
    [self.window addSubview:dView];
    [self.window addSubview:eView];
    
   
    
    [self.window insertSubview:dView aboveSubview:aView];
    
    //把某一个视图已到最前面
    [self.window bringSubviewToFront:aView];
    //把某一个视图移到最后面
    [self.window sendSubviewToBack:aView];
    //交换视图
    [self.window exchangeSubviewAtIndex:0 withSubviewAtIndex:3];
    //从父视图上移除某一个view
    [aView removeFromSuperview];
    
    
    //hidden  yes  隐藏  no=显示
    eView.hidden=NO;
    //alpha  0是完全透明~1是不透明
    dView.alpha=0.8;
    //superview  父视图
    
    NSLog(@"%@",cView.subviews);
    
    
    //输出当前视图的所有子视图
    NSArray *subViewsArray=bView.subviews;
    NSLog(@"%@",subViewsArray);
    
    //通过tag寻找view用父视图调用viewwithtag方法，并且添加tag值
    cView.tag=100;
    NSLog(@"%@",cView);
    UIView *view=[bView viewWithTag:100];
    NSLog(@"%@",view);
    
    
    [aView release];
    [bView release];
    [cView release];
    [dView release];
    [eView release];
  
    
    
    
    //UILable  标签、显示文本
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(30, 500,300,200)];
    lable.text=@"张鹏飞马上就下课了V大世博会的能力和那个电池vbnfsgkf";
    lable.backgroundColor=[UIColor redColor];
    lable.font=[UIFont systemFontOfSize:34];
    lable.textAlignment=NSTextAlignmentCenter;
    lable.textColor=[UIColor blackColor];
    lable.shadowColor=[UIColor whiteColor];
    lable.numberOfLines=0;
    lable.shadowOffset=CGSizeMake(2, 2);
    [self.window addSubview:lable];
    [lable release];
    
    
    
    
    
    
    
    
    
    
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
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.zhang.lessononehomew" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"lessononehomew" withExtension:@"momd"];
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
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"lessononehomew.sqlite"];
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
