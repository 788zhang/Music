//
//  AppDelegate.m
//  UITabbarController
//
//  Created by scjy on 15/12/7.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//
//引入四个头文件
#import "AppDelegate.h"
#import "WeChatViewController.h"
#import "AdressBookViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"

@interface AppDelegate ()
@property(nonatomic, retain)UINavigationController *nav1;
@property(nonatomic, retain)UINavigationController *nav3;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    
    //UITabBarController 是管理多个视图控制器(被管理的是平级的关系)，通过tabbar上的标签，切换显示被管理的控制器的页面
    
    //UITabBarController
    UITabBarController *tb=[[UITabBarController alloc]init];
    
    
    //微信
    WeChatViewController *wechar=[[WeChatViewController alloc]init];
    
     wechar.navigationItem.title=@"微信";
    self.nav1=[[UINavigationController alloc]initWithRootViewController:wechar];
    
    //标签  标题
    _nav1.tabBarItem.title=@"微信";
     //标签 图片
    _nav1.tabBarItem.image=[UIImage imageNamed: @"09-chat2.png"];
     //标签 标记，徽章
    _nav1.tabBarItem.badgeValue=@"33";
    
   
   
    
    
    //通讯录
    AdressBookViewController *adressbook=[[AdressBookViewController alloc]init];
     adressbook.navigationItem.title=@"通讯录";
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:adressbook];
    nav2.tabBarItem.title=@"通讯录";
    
   
    nav2.tabBarItem.image=[UIImage imageNamed: @"75-phone.png"];
    //发现
    DiscoverViewController *discoverVC=[[DiscoverViewController alloc]init];
    discoverVC.navigationItem.title=@"发现";
    self.nav3=[[UINavigationController alloc]initWithRootViewController:discoverVC];
    self.nav3.tabBarItem.title=@"发现";
  
    self.nav3.tabBarItem.image=[UIImage imageNamed: @"27-planet.png"];
    self.nav3.tabBarItem.badgeValue=@"7";
    //我
    MeViewController *meVC=[[MeViewController alloc]init];
    meVC.navigationItem.title=@"我";
    UINavigationController *nav4=[[UINavigationController alloc]initWithRootViewController:meVC];
    nav4.tabBarItem.title=@"我";
    
    nav4.tabBarItem.image=[UIImage imageNamed: @"29-heart.png"];
    //设置被tabbar控制管理的控制器,当超过五个的时候，系统会自动增加一个move按钮标签，管理第五个和5个以上的控制器，没有出现在底部的视图控制器会以列表的形式通过点击move展示出来
    tb.viewControllers=@[self.nav1,nav2,self.nav3,nav4];
    
    tb.delegate=self;
    //选中时候的颜色
    tb.tabBar.tintColor=[UIColor colorWithRed:100/255.0f green:200/255.0f blue:250/255.0f alpha:1.0];
    //背景颜色
    tb.tabBar.barTintColor=[UIColor whiteColor];
    
//    //设置tabBar的背景图片
//    [tb.tabBar setBackgroundImage:[UIImage imageNamed:@"tabBar.png"]];
    
    
    //设置跟视图控制器
    self.window.rootViewController=tb;
    
    [wechar release];
    [adressbook release];
    [discoverVC release];
    [meVC release];
    [self.nav1 release];
    [nav2 release];
    [self.nav3 release];
    [nav4 release];
    [tb release];
    
    self.window.backgroundColor = [UIColor whiteColor];
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
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.zhang.UITabbarController" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"UITabbarController" withExtension:@"momd"];
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
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"UITabbarController.sqlite"];
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



#pragma mark ----代理协议
//将要选的的Controller
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    
    
    NSLog(@"%s ,%d",__FUNCTION__,__LINE__);
    NSLog(@"%@",viewController);
    
    
    return YES;
    
}

//点击的那个Controller
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    NSLog(@"%s ,%d",__FUNCTION__,__LINE__);
    NSLog(@"%@",viewController);
    
    
    
    if (viewController == self.nav1) {
        
        self.nav1.tabBarItem.badgeValue=nil;
        
    }else if(viewController == self.nav3) {
        
        self.nav3.tabBarItem.badgeValue=nil;
        
        
    }
    
    
    
    
}


- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers{
    
    
    NSLog(@"%s ,%d",__FUNCTION__,__LINE__);
    
}

















@end
