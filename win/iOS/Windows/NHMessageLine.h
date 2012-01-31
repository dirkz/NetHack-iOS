//
//  NHMessageLine.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHMessageLine : NSObject

@property (nonatomic, readonly) NSString *message;
@property (nonatomic, readonly) int attribute;

+ (id)messageLineWithCString:(const char *)s attribute:(int)a;

- (id)initWithCString:(const char *)s attribute:(int)a;

@end
