//
//  NHMapWindow.m
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHMapWindow.h"

#import "hack.h"

@implementation NHMapWindow

@synthesize rows;
@synthesize columns;

+ (id)window {
    return [[[self alloc] init] autorelease];
}

- (id)initWithRows:(int)r columns:(int)c {
    if ((self = [super initWithType:NHW_MAP])) {
        rows = r;
        columns = c;
        glyphs = calloc(sizeof(int), rows * columns);
        [self clear];
    }
    return self;
}

- (void)dealloc {
    free(glyphs);
    [super dealloc];
}

- (void)clear {
    for (int i = 0; i < rows * columns; ++i) {
        glyphs[i] = MAX_GLYPH;
    }
}

- (void)setGlyph:(int)g atX:(int)x y:(int)y {
    *(glyphs + y * columns + x) = g;
}

- (int)glyphAtX:(int)x y:(int)y {
    return *(glyphs + y * columns + x);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%s: 0x%x type:%d, dim(%d,%d) curs(%d,%d)>", object_getClassName(self), self, [self windowNameFromType:self.type], self.columns, self.rows, self.x, self.y];
}

@end
