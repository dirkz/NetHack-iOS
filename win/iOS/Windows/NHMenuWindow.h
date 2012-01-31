//
//  NHMenuWindow.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHWindow.h"

@class NHMenuItem;

@interface NHMenuWindow : NHWindow {
    
    NSMutableArray *menuItems;
    NHMenuItem *lastParent;
    
}

@property (nonatomic, copy) NSString *prompt;
@property (nonatomic, assign) int how;
@property (nonatomic, readonly) NSArray *menuItems;
@property (nonatomic, readonly) BOOL grouped;
@property (nonatomic, readonly) NSUInteger numberOfMenuItems;
@property (nonatomic, retain) NSArray *selectedItems;
@property (nonatomic, readonly) BOOL isMenuWindow;

- (void)start;
- (void)addMenuItem:(NHMenuItem *)item;
- (void)end;

@end
