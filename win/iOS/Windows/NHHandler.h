//
//  NHHandler.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kNHHandler (@"NHHandler")

@class NHYNQuestion;
@class NHMenuWindow;
@class NHMessageWindow;
@class NHPoskey;
@class NHMapWindow;
@class NHStatusWindow;

@protocol NHHandler <NSObject>

- (void)handleYNQuestion:(NHYNQuestion *)question;
- (void)handleMenuWindow:(NHMenuWindow *)w;
- (void)handleRawPrintWithMessageWindow:(NHMessageWindow *)w;
- (void)handleMessageWindow:(NHMessageWindow *)w shouldBlock:(BOOL)b;
- (void)handlePoskey:(NHPoskey *)p;
- (void)handleMapWindow:(NHMapWindow *)w shouldBlock:(BOOL)b;
- (void)handleStatusWindow:(NHStatusWindow *)w;

@end
