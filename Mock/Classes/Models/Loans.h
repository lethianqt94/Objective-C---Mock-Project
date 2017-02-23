//
//  Loans.h
//  Mock
//
//  Created by Neolab on 2/23/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Loan.h"
#import <JSONModel.h>

@interface Loans : JSONModel

@property (nonatomic) NSArray<Loan *> *loanArray;

@end
