//
//  NHMessageLine.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHMessageLine.h"

@implementation NHMessageLine

@synthesize message;
@synthesize attribute;

+ (id)messageLineWithCString:(const char *)s attribute:(int)a {
    return [[[self alloc] initWithCString:s attribute:a] autorelease];
}

- (id)initWithCString:(const char *)s attribute:(int)a {
    if ((self = [super init])) {
        message = [NSString stringWithCString:s encoding:NSASCIIStringEncoding];
        message = [message stringByReplacingOccurrencesOfString:@"\r" withString:@""];
        message = [message stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        message = [message copy];
        attribute = a;
    }
    return self;
}

- (void)dealloc {
    [message release];
    [super dealloc];
}

@end
