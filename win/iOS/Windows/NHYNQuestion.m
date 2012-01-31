//
//  NHYNQuestion.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHYNQuestion.h"

@implementation NHYNQuestion

@synthesize question;
@synthesize choices;
@synthesize defaultChoice;
@synthesize choice;

+ (id)questionWithQuestion:(NSString *)q choices:(NSString *)ch defaultChoice:(char)df {
    return [[[self alloc] initWithQuestion:q choices:ch defaultChoice:df] autorelease];
}

- (id)initWithQuestion:(NSString *)q choices:(NSString *)ch defaultChoice:(char)df {
    if ((self = [super init])) {
        question = [q copy];
        choices = [ch copy];
        defaultChoice = df;
    }
    return self;
}

- (void)dealloc {
    [question release];
    [choices release];
    [super dealloc];
}

@end
