//
//  main.m
//  Notification
//
//  Created by Ryan Huynh on 7/5/16.
//  Copyright © 2016 Info Way. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObserver.h"
#import "MyNotificationCenter.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        MyNotificationCenter *center = [MyNotificationCenter myDefaultCenter];
        MyObserver *obs = [[MyObserver alloc] initWithObject:center];
        NSNumber *num = [[NSNumber alloc] initWithInt:5];
        [center changeValueAndNotify:num];
    }
    return 0;
}
