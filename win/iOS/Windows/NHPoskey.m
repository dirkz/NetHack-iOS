//
//  NHPoskey.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/17/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHPoskey.h"

@implementation NHPoskey

@synthesize key;
@synthesize x;
@synthesize y;
@synthesize mod;
@synthesize isDirection;

+ (id)poskey {
    return [[[self alloc] init] autorelease];
}

+ (id)poskeyWithKey:(char)k {
    return [[[self alloc] initWithKey:k] autorelease];
}

- (id)initWithKey:(char)k {
    if ((self = [super init])) {
        self.key = k;
    }
    return self;
}

- (void)clear {
    x = 0;
    y = 0;
    mod = 0;
    key = 0;
}

- (void)updateWithKey:(char)k {
    [self clear];
    key = k;
}

- (void)updateWithX:(int)i y:(int)j {
    [self clear];
    x = i;
    y = j;
}

@end
