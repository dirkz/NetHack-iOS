//
//  NHMenuItem.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/17/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "hack.h"

@interface NHMenuItem : NSObject {
    
    NSMutableArray *menuItems;
    
}

@property (nonatomic, readonly) int glyph;
@property (nonatomic, readonly) ANY_P identifier;
@property (nonatomic, readonly) CHAR_P accelerator;
@property (nonatomic, readonly) CHAR_P groupAccelerator;
@property (nonatomic, readonly) int attribute;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) BOOL preselected;
@property (nonatomic, readonly) NSArray *menuItems;
@property (nonatomic, readonly) NSUInteger numberOfMenuItems;
@property (nonatomic, readonly) BOOL isParent;

+ (id)menuItemWithGlyph:(int)g identifier:(ANY_P)i accelerator:(CHAR_P)acc groupAccelerator:(CHAR_P)gAcc attribute:(int)a nameCString:(const char *)n preselected:(BOOL)presel;

- (id)initWithGlyph:(int)g identifier:(ANY_P)i accelerator:(CHAR_P)acc groupAccelerator:(CHAR_P)gAcc attribute:(int)a nameCString:(const char *)n preselected:(BOOL)presel;
- (void)addMenuItem:(NHMenuItem *)child;

@end
