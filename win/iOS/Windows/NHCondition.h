//
//  NHCondition.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHCondition : NSObject {

    NSCondition *condition;

}

@property (nonatomic, readonly) BOOL finished;

- (void)wait;
- (void)signal;

@end
