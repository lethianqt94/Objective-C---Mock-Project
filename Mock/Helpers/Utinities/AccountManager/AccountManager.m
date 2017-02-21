//
//  AccountManager.m
//  Mock
//
//  Created by Neolab on 2/21/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "AccountManager.h"

@implementation AccountManager

#pragma mark - Implementing methods

+ (instancetype) sharedInstance {
    static AccountManager *sharedInstance = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });

    return sharedInstance;
}

- (void)signInWithEmail:(NSString *)email password:(NSString *)password completion:(void (^)(BOOL))completion {
    if (![email  isEqual: @""] && ![password  isEqual: @""]) {
        completion(true);
    } else {
        completion(false);
    }
}

- (BOOL)logOut {
    return false;
}

@end
