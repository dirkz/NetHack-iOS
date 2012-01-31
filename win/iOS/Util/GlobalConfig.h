//
//  GlobalConfig.h
//  NetHack HD
//
//  Created by Dirk Zimmermann on 11/7/11.
//  Copyright (c) 2011 Dirk Zimmermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GlobalConfig;
typedef void (^GlobalConfigObservationHandlerBlock)(GlobalConfig *config, NSString *key);

#define kGameCenterAvailable (@"GameCenterAvailable")

@interface GlobalConfig : NSObject {
    
    NSMutableDictionary *config;
    NSMutableDictionary *observers;
    
}

+ (void)setSharedInstance:(id)instance;
+ (id)sharedInstance;

- (BOOL)isGameCenterAPIAvailable;

- (void)setObject:(id)o forKey:(NSString *)defaultName;
- (id)objectForKey:(NSString *)defaultName;
- (void)setInt:(int)i forKey:(NSString *)defaultName;
- (int)intForKey:(NSString *)defaultName;
- (void)setBool:(BOOL)b forKey:(NSString *)defaultName;
- (BOOL)boolForKey:(NSString *)defaultName;

- (void)addObserverForKey:(NSString *)key block:(GlobalConfigObservationHandlerBlock)block;

@end
