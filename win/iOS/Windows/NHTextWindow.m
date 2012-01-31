//
//  NHTextWindow.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHTextWindow.h"

#import "hack.h"

@implementation NHTextWindow

+ (id)window {
    return [[[self alloc] init] autorelease];
}

- (id)init {
    if ((self = [super initWithType:NHW_TEXT])) {
    }
    return self;
}

@end
