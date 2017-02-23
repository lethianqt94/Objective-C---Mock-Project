//
//  Loan.h
//  Mock
//
//  Created by Neolab on 2/23/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel.h>
#import "LoanImages.h"
#import "LoanTags.h"
#import "LoanLocation.h"
@protocol LoanModel
@end

@interface LoanModel : JSONModel

@property (nonatomic) NSString *id;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *sector;
@property (nonatomic) NSArray <NSString *> *languages;
@property (nonatomic) NSString *status;
@property (nonatomic) int funded_amount;
@property (nonatomic) int basket_amount;
@property (nonatomic) LoanImages *image;
@property (nonatomic) NSString *activity;
@property (nonatomic) NSArray <Optional> *themes;
@property (nonatomic) NSString *use;
@property (nonatomic) LoanLocation *location;
@property (nonatomic) int partner_id;
@property (nonatomic) NSString *posted_date;
@property (nonatomic) NSString *planned_expiration_date;
@property (nonatomic) NSString *loan_amount;
@property (nonatomic) int borrower_count;
@property (nonatomic) int lender_count;
@property (nonatomic) BOOL bonus_credit_eligibility;
@property (nonatomic) NSArray <LoanTags *> *tags;


@end
