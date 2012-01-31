//
//  NHAction.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/24/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NHAction;

typedef void (^ActionBlock)(NHAction *action);

@interface NHAction : NSObject

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) ActionBlock block;

+ (id)actionWithTitle:(NSString *)t block:(ActionBlock)b;

- (id)initWithTitle:(NSString *)t block:(ActionBlock)b;
- (void)perform;

@end
