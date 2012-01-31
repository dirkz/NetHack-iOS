//
//  NHWindow.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NHCondition.h"

@class NHMessageLine;

@interface NHWindow : NHCondition {
    
    NSMutableArray *messages;
    
}

@property (nonatomic, readonly) int type;

@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;

@property (nonatomic, readonly) NSArray *messages;
@property (nonatomic, readonly) NSUInteger numberOfMessages;

- (id)initWithType:(int)t;

- (NSString *)windowNameFromType:(int)t;
- (void)clear;
- (void)clipAroundX:(int)x y:(int)y;

- (void)addCString:(const char *)s withAttribute:(int)attr;
- (void)addCString:(const char *)s;

- (NHMessageLine *)messageLineAtIndex:(NSUInteger)i;
- (NSString *)messageAtIndex:(NSUInteger)i;

@end
