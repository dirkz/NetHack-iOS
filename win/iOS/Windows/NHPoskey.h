//
//  NHPoskey.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/17/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHCondition.h"

@interface NHPoskey : NHCondition

@property (nonatomic, assign) char key;
@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;
@property (nonatomic, assign) int mod;
@property (nonatomic, assign) BOOL isDirection;

+ (id)poskey;
+ (id)poskeyWithKey:(char)k;

- (id)initWithKey:(char)k;
- (void)updateWithKey:(char)k;
- (void)updateWithX:(int)i y:(int)j;

@end
