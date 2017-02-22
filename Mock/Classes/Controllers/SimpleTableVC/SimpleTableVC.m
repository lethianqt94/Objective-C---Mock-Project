//
//  SimpleTableVC.m
//  Mock
//
//  Created by Neolab on 2/21/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "SimpleTableVC.h"

@interface SimpleTableVC ()

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation SimpleTableVC

NSArray *tableData;
NSArray *thumbnails;
static NSString *customCellIdentifier = @"CustomCell";

#pragma mark - Methods

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:true];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  // Initialize table data
  tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
  
  // Initialize thumbnails
  thumbnails = [NSArray arrayWithObjects:@"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", @"img_fruit.jpg", nil];
  
  [self.navigationController setNavigationBarHidden:false];
  self.navigationController.navigationBar.translucent = NO;
}

#pragma mark - UITextFieldDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 65;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  TableViewCell *cell = (TableViewCell *) [self.tableview dequeueReusableCellWithIdentifier:customCellIdentifier];
  if (cell == nil) {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
    cell = [nib objectAtIndex:0];
  }
  
  cell.lblTitle.text = [tableData objectAtIndex:indexPath.row];
  cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
  
  return cell;
}

@end
