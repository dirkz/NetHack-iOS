//
//  NHAction.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/24/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHAction.h"

@implementation NHAction

@synthesize title;
@synthesize block;

+ (id)actionWithTitle:(NSString *)t block:(ActionBlock)b {
    return [[[self alloc] initWithTitle:t block:b] autorelease];
}

- (id)initWithTitle:(NSString *)t block:(ActionBlock)b {
    if ((self = [super init])) {
        title = [t copy];
        block = [b copy];
    }
    return self;
}

- (void)dealloc {
    [title release];
    [block release];
    [super dealloc];
}

- (void)perform {
    if (block) {
        block(self);
    }
}

@end
