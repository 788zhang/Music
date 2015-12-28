//
//  PoemModal.h
//  Poem
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoemModal : NSObject

@property(nonatomic,retain) NSString *poemName;


- (instancetype)initWithName:(NSString *)poemName;

@end
