//
//  AccountManager.h
//  Mock
//
//  Created by Neolab on 2/21/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountManager : NSObject

#pragma mark - Class methods

+ (instancetype) sharedInstance;

- (void)signInWithEmail:(NSString *)email password:(NSString *)password
             completion:(void (^) (BOOL result))completion;
- (BOOL)logOut;

@end
