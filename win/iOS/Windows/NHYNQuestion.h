//
//  NHYNQuestion.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NHCondition.h"

@interface NHYNQuestion : NHCondition

@property (nonatomic, readonly) NSString *question;
@property (nonatomic, readonly) NSString *choices;
@property (nonatomic, readonly) char defaultChoice;
@property (nonatomic, assign) char choice;

+ (id)questionWithQuestion:(NSString *)q choices:(NSString *)ch defaultChoice:(char)df;

- (id)initWithQuestion:(NSString *)q choices:(NSString *)ch defaultChoice:(char)df;

@end
