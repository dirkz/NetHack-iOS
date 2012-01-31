//
//  NHWindow.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHWindow.h"

#import "hack.h"

#import "NHMessageLine.h"

@implementation NHWindow

@synthesize type;
@synthesize x;
@synthesize y;

@synthesize messages;

- (id)initWithType:(int)t {
    if ((self = [super init])) {
        type = t;
        messages = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    [messages release];
    [super dealloc];
}

- (void)clear {
    [messages removeAllObjects];
}

- (NSString *)windowNameFromType:(int)t {
    switch (t) {
        case NHW_MESSAGE:
            return @"NHW_MESSAGE";
        case NHW_STATUS:
            return @"NHW_STATUS";
        case NHW_MAP:
            return @"NHW_MAP";
        case NHW_MENU:
            return @"NHW_MENU";
        case NHW_TEXT:
            return @"NHW_TEXT";
        default:
            return @"UNKNOWN";
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%s: 0x%x type:%d>", object_getClassName(self), self, [self windowNameFromType:self.type]];
}

- (void)clipAroundX:(int)i y:(int)j {
    x = i;
    y = j;
}

- (void)addCString:(const char *)s withAttribute:(int)attr {
    [messages addObject:[NHMessageLine messageLineWithCString:s attribute:attr]];
}

- (void)addCString:(const char *)s {
    [self addCString:s withAttribute:ATR_NONE];
}

- (NHMessageLine *)messageLineAtIndex:(NSUInteger)i {
    return [messages objectAtIndex:i];
}

- (NSString *)messageAtIndex:(NSUInteger)i {
    NHMessageLine *line = [self messageLineAtIndex:i];
    return line.message;
}

#pragma mark - Properties

- (NSUInteger)numberOfMessages {
    return messages.count;
}

@end
