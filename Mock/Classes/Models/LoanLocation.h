//
//  LoanLocation.h
//  Mock
//
//  Created by Neolab on 2/23/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel.h>

@interface LoanLocation : JSONModel

@property (nonatomic) NSString *country_code;
@property (nonatomic) NSString *country;
@property (nonatomic) NSString *town;
@property (nonatomic) NSString *geo_level;
@property (nonatomic) NSString *geo_pairs;
@property (nonatomic) NSString *geo_type;

@end
