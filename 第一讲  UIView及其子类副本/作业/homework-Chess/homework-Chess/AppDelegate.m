//
//  AppDelegate.m
//  homework-Chess
//
//  Created by scjy on 15/11/18.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
//    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40, 40,40,40)];
//    view.backgroundColor=[UIColor grayColor];
//    [self.window addSubview:view];
//    [view release];
//    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(80, 40,40,40)];
//    view1.backgroundColor=[UIColor whiteColor];
//    [self.window addSubview:view1];
//    [view1 release];
//    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(120, 40,40,40)];
//    view2.backgroundColor=[UIColor grayColor];
//    [self.window addSubview:view2];
//    [view2 release];
//    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(160, 40,40,40)];
//    view3.backgroundColor=[UIColor whiteColor];
//    [self.window addSubview:view3];
//    [view3 release];
    
    for (int i=0; i<10; i++) {
        for (int j=0; j<20; j++) {
            if (i % 2==0) {
                if (j%2==0) {
                    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
                    view.backgroundColor=[UIColor grayColor];
                    [self.window addSubview:view];
                    [view release];

                }else{
                UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
                view.backgroundColor=[UIColor whiteColor];
                [self.window addSubview:view];
                [view release];
                }
            }
            else if (i % 2==1){
                if (j%2==0) {
                    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
                    view.backgroundColor=[UIColor whiteColor];
                    [self.window addSubview:view];
                    [view release];
                } else {
                    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
                    view.backgroundColor=[UIColor grayColor];
                    [self.window addSubview:view];
                    [view release];
                }
                
                
            }
            
            //   for (int i = 0; i < 4; i++) {
                //        for (int j = 0; j < 4; j++) {
                //            UIView *view = [[UIView alloc]initWithFrame:CGRectMake((75 + 50 * i), (150 + 50 * j), 50, 50)];
                //            if ((i + j) % 2 != 0) {
                //                view.backgroundColor = [UIColor blackColor];
                //                [self.window addSubview:view];
                //                [view release];
                //            }
                //        }
                //    }
            
            
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    for (int i=0; i<11; i++) {
//        for (int j=0; j<100; j++) {
//            
//       
//        if (i%2==0 && j%2==0) {
//            UIView *view=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
//            view.backgroundColor=[UIColor grayColor];
//            [self.window addSubview:view];
//            [view release];
////            UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
////            view1.backgroundColor=[UIColor whiteColor];
////            [self.window addSubview:view1];
////            [view1 release];
////            
//            
//        } else
//            
//            if (j%2 ==1) {
//                if(i %2==0){
//                UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
//                view2.backgroundColor=[UIColor grayColor];
//                [self.window addSubview:view2];
//                    [view2 release];}
//                if (i%2==1) {
//                    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
//                    view3.backgroundColor=[UIColor whiteColor];
//                    [self.window addSubview:view3];
//                    [view3 release];
//
//                }
//               
//            }
//            
//            
//            
//            
//            
//        else
//        {
//            UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(40*i, 40*j,40,40)];
//            view3.backgroundColor=[UIColor whiteColor];
//            [self.window addSubview:view3];
//            [view3 release];
//            
//
//        }
//    }
//    }
    
    self.window.backgroundColor = [UIColor redColor];
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
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.zhang.homework_Chess" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"homework_Chess" withExtension:@"momd"];
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
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"homework_Chess.sqlite"];
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
