//
//  PoemModal.m
//  Poem
//
//  Created by scjy on 15/12/5.
//  Copyright (c) 2015年 芒果科技. All rights reserved.
//

#import "PoemModal.h"

@implementation PoemModal

- (instancetype)initWithName:(NSString *)poemName{
    self = [super init];
    if (self) {
        _poemName = poemName;
    }
    return self;
}


@end
