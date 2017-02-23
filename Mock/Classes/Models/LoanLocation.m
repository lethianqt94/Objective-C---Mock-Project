//
//  LoanLocation.m
//  Mock
//
//  Created by Neolab on 2/23/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "LoanLocation.h"

@implementation LoanLocation

+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                @"country_code": @"country_code",
                                                                @"country": @"country",
                                                                @"town": @"town",
                                                                @"geo_level": @"geo.level",
                                                                @"geo_pairs": @"geo.pairs",
                                                                @"geo_type": @"geo.type"
                                                                }];
}

@end
