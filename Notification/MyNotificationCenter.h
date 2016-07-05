//
//  MyNotificationCenter.h
//  Notification
//
//  Created by Ryan Huynh on 7/5/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObserver.h"
@class MyObserver;
@interface MyNotificationCenter : NSObject

- (void) addObserver :(MyObserver *) observer;
- (void) removeObserver;
+ (instancetype) myDefaultCenter;
- (void) pushNotification;
- (void) changeValueAndNotify :(NSNumber *)newValue;
@property (nonatomic, strong) NSMutableArray* observerCollection;
@property (nonatomic, strong) NSNumber *testSubject;
@end
