//
//  TableViewCell.m
//  Mock
//
//  Created by Neolab on 2/22/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize imageView = _imageView;
@synthesize lblTitle = _lblTitle;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
