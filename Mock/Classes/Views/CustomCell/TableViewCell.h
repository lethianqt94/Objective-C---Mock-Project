//
//  TableViewCell.h
//  Mock
//
//  Created by Neolab on 2/22/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
