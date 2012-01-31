//
//  NHMenuWindow.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHMenuWindow.h"

#import "hack.h"

#import "NHMenuItem.h"

@interface NHMenuWindow ()

@property (nonatomic, assign) enum { kMenuUndecided = 0, kMenuIsMenu, kMenuIsText } menuStatus;

@end

@implementation NHMenuWindow

@synthesize prompt;
@synthesize how;
@synthesize menuItems;
@synthesize selectedItems;
@synthesize isMenuWindow;
@synthesize menuStatus;

+ (id)window {
    return [[[self alloc] init] autorelease];
}

- (id)init {
    if ((self = [super initWithType:NHW_MENU])) {
        menuItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    [menuItems release];
    [selectedItems release];
    [super dealloc];
}

- (void)addCString:(const char *)s withAttribute:(int)attr {
    [super addCString:s withAttribute:attr];
    menuStatus = kMenuIsText;
}

- (void)clear {
    [menuItems removeAllObjects];
    lastParent = nil;
}

- (void)start {
    menuStatus = kMenuIsMenu;
    [self clear];
}

- (void)addMenuItem:(NHMenuItem *)item {
    if (item.isParent) {
        lastParent = item;
        [menuItems addObject:item];
    } else {
        if (lastParent) {
            [lastParent addMenuItem:item];
        } else {
            [menuItems addObject:item];
        }
    }
}

- (void)end {
    
}

#pragma mark - Properties

- (BOOL)grouped {
    if (menuItems.count == 0) {
        return NO;
    }
    NHMenuItem *item1 = [self.menuItems objectAtIndex:0];
    return item1.isParent;
}

- (NSUInteger)numberOfMenuItems {
    return menuItems.count;
}

- (BOOL)isMenuWindow {
    if (menuStatus == kMenuIsText) {
        return NO;
    } else {
        return YES;
    }
}

@end
