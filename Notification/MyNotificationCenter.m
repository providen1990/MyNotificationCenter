//
//  MyNotificationCenter.m
//  Notification
//
//  Created by Ryan Huynh on 7/5/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import "MyNotificationCenter.h"

@implementation MyNotificationCenter

+ (instancetype)myDefaultCenter
{
    static dispatch_once_t once;
    static id defaultCenter;
    
    dispatch_once(&once, ^{ defaultCenter = [[MyNotificationCenter alloc] init]; });
    
    return defaultCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.observerCollection = [[NSMutableArray alloc] init];
        self.testSubject = 0;
    }
    return self;
}

- (void)addObserver :(MyObserver *) observer{

    [[self observerCollection] addObject:observer];
}

- (void)removeObserver{
    [[self observerCollection] removeAllObjects];

}

- (void) pushNotification{

    for (MyObserver *obs in [self observerCollection]){
        [obs update:[self testSubject]];
    }
}

- (void) changeValueAndNotify :(NSNumber *)newValue{
    self.testSubject = newValue;
    [self pushNotification];
}
@end
