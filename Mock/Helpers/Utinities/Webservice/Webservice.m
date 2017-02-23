//
//  Webservice.m
//  Mock
//
//  Created by Neolab on 2/22/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "Webservice.h"

@implementation Webservice

+ (instancetype)sharedClient {
  static Webservice *_sharedClient = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedClient = [[Webservice alloc] initWithBaseURL:[NSURL URLWithString: API_SERVER_URL]];
    _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
  });
  
  return _sharedClient;
}

+  (void)requestPostUrl:(NSString *)strURL parameters:(NSDictionary *)dictParams success:(void (^)(NSDictionary *responce))success failure:(void (^)(NSError *error, NSInteger statusCode))failure {
  
  [[Webservice sharedClient] POST:strURL parameters:dictParams progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    NSLog(@"request url %@", task.currentRequest.URL.absoluteString);
    if([responseObject isKindOfClass:[NSDictionary class]]) {
      if(success) {
        success(responseObject);
      }
    } else {
      NSDictionary *response = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
      if(success) {
        success(response);
      }
    }
  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
    NSInteger statusCode = httpResponse.statusCode;
    failure(error, statusCode);
  }];
  
}

+  (void)requestGetUrl:(NSString *)strURL parameters:(NSDictionary *)dictParams success:(void (^)(NSDictionary *responce))success failure:(void (^)(NSError *error, NSInteger statusCode))failure {
  
  [[Webservice sharedClient] GET:strURL parameters:dictParams progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    NSLog(@"request url %@", task.currentRequest.URL.absoluteString);
    if([responseObject isKindOfClass:[NSDictionary class]]) {
      if(success) {
        success(responseObject);
      }
    } else {
      NSDictionary *response = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
      if(success) {
        success(response);
      }
    }
  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
    NSInteger statusCode = httpResponse.statusCode;
    failure(error, statusCode);
  }];
  
}

@end
