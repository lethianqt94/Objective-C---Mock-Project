//
//  Loan.m
//  Mock
//
//  Created by Neolab on 2/23/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "Loan.h"

@implementation Loan

+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                @"id": @"id",
                                                                @"name": @"name",
                                                                @"languages": @"description.languages",
                                                                @"status": @"status",
                                                                @"funded_amount": @"funded_amount",
                                                                @"basket_amount": @"basket_amount",
                                                                @"image": @"image",
                                                                @"activity": @"activity",
                                                                @"sector": @"sector",
                                                                @"themes": @"themes",
                                                                @"use": @"use",
                                                                @"location": @"location",
                                                                @"partner_id": @"partner_id",
                                                                @"posted_date": @"posted_date",
                                                                @"planned_expiration_date": @"planned_expiration_date",
                                                                @"loan_amount": @"loan_amount",
                                                                @"borrower_count": @"borrower_count",
                                                                @"lender_count": @"lender_count",
                                                                @"bonus_credit_eligibility": @"bonus_credit_eligibility",
                                                                @"tags": @"tags"
                                                                }];
}

@end
