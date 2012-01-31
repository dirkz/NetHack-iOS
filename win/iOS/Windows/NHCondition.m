//
//  NHCondition.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHCondition.h"

@implementation NHCondition

@synthesize finished;

- (id)init {
    if ((self = [super init])) {
        condition = [[NSCondition alloc] init];
    }
    return self;
}

- (void)wait {
    [condition lock];
    while (!self.finished) {
        [condition wait];
    }
    [condition unlock];
}

- (void)signal {
    [condition lock];
    finished = YES;
    [condition signal];
    [condition unlock];
}

- (void)dealloc {
    [condition release];
    [super dealloc];
}

@end
