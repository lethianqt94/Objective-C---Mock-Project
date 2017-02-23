//
//  Webservice.h
//  Mock
//
//  Created by Neolab on 2/22/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "utilities.h"
#import "AppConstant.h"

@interface Webservice : AFHTTPSessionManager

+ (instancetype)sharedClient;

+  (void)requestPostUrl:(NSString *)strURL parameters:(NSDictionary *)dictParams success:(void (^)(NSDictionary *responce))success failure:(void (^)(NSError *error, NSInteger statusCode))failure;

+  (void)requestGetUrl:(NSString *)strURL parameters:(NSDictionary *)dictParams success:(void (^)(NSDictionary *responce))success failure:(void (^)(NSError *error, NSInteger statusCode))failure;

@end
