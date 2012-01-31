//
//  NHMapWindow.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/16/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import "NHWindow.h"

@interface NHMapWindow : NHWindow {
    
    int *glyphs;
    
}

@property (nonatomic, readonly) int rows;
@property (nonatomic, readonly) int columns;

- (id)initWithRows:(int)r columns:(int)c;
- (void)setGlyph:(int)g atX:(int)x y:(int)y;
- (int)glyphAtX:(int)x y:(int)y;

@end
