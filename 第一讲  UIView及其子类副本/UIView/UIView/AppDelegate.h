//
//  AppDelegate.h
//  UIView
//
//  Created by scjy on 15/11/18.
//  Copyright (c) 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
//window 是应用程序的窗口，每一个app都需要借助UIwindow对象将内容呈现给用户
//通常一个应用程序只有一个window窗口，（也就是之创建一个UIWindow对象）
//window的作用：呈现给用户UI界面，window只负责承载，但是我们不会对window做过多操作

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

