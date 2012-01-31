//
//  NHMenuItem.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/17/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHMenuItem.h"

@implementation NHMenuItem

@synthesize glyph;
@synthesize identifier;
@synthesize accelerator;
@synthesize groupAccelerator;
@synthesize attribute;
@synthesize name;
@synthesize preselected;
@synthesize menuItems;

+ (id)menuItemWithGlyph:(int)g identifier:(ANY_P)i accelerator:(CHAR_P)acc groupAccelerator:(CHAR_P)gAcc attribute:(int)a nameCString:(const char *)n preselected:(BOOL)presel {
    return [[[self alloc] initWithGlyph:g identifier:i accelerator:acc groupAccelerator:gAcc attribute:a nameCString:n preselected:presel] autorelease];
}

- (id)initWithGlyph:(int)g identifier:(ANY_P)i accelerator:(CHAR_P)acc groupAccelerator:(CHAR_P)gAcc attribute:(int)a nameCString:(const char *)n preselected:(BOOL)presel {
    if ((self = [super init])) {
        glyph = g;
        identifier = i;
        if (self.isParent) {
            menuItems = [[NSMutableArray alloc] init];
        }
        accelerator = acc;
        groupAccelerator = gAcc;
        attribute = a;
        name = [[NSString alloc] initWithCString:n encoding:NSASCIIStringEncoding];
        preselected = presel;
    }
    return self;
}

- (void)dealloc {
    [name release];
    [menuItems release];
    [super dealloc];
}

- (void)addMenuItem:(NHMenuItem *)child {
    [menuItems addObject:child];
}

#pragma mark - Properties

- (NSUInteger)numberOfMenuItems {
    return menuItems.count;
}

- (BOOL)isParent {
    return identifier.a_obj == 0;
}

@end
