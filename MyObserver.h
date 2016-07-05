//
//  MyObserver.h
//  Notification
//
//  Created by Ryan Huynh on 7/5/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyNotificationCenter.h"
@class MyNotificationCenter;

@interface MyObserver : NSObject
@property (nonatomic, strong) MyNotificationCenter* center;
@property (nonatomic, strong) NSNumber *testSubject;

- (instancetype)initWithObject :(MyNotificationCenter *)center;
- (void) update :(NSNumber *)newValue;
@end
