//
//  MyObserver.m
//  Notification
//
//  Created by Ryan Huynh on 7/5/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import "MyObserver.h"

@implementation MyObserver

- (instancetype)initWithObject :(MyNotificationCenter *)center
{
    self = [super init];
    if (self) {
        self.center = center;
        [self.center addObserver:self];
    }
    return self;
}

- (void) update :(NSNumber *)newValue{
    self.testSubject = newValue;
    NSLog(@"This is the new value %li", (long)[[self testSubject] integerValue]);
}

@end
