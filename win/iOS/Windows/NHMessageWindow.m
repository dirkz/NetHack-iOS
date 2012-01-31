//
//  NHMessageWindow.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHMessageWindow.h"

#import "hack.h"

@implementation NHMessageWindow

+ (id)window {
    return [[[self alloc] init] autorelease];
}

- (id)init {
    if ((self = [super initWithType:NHW_MESSAGE])) {
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%s: 0x%x type:%d, curs(%d,%d)>", object_getClassName(self), self, [self windowNameFromType:self.type], self.x, self.y];
}

@end
