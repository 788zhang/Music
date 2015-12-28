//
//  ThreePoemViewController.h
//  Poem
//
//  Created by scjy on 15/12/6.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PoemModal.h"
@interface ThreePoemViewController : UIViewController
@property(nonatomic,retain) PoemModal *modal;
@property(nonatomic,retain) NSString *intr;
@property(nonatomic,retain) NSArray *str;
@property(nonatomic,retain) NSDictionary *dict;

@end
