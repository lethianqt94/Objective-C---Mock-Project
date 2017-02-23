//
//  ViewController.m
//  Mock
//
//  Created by Neolab on 2/21/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark - IBOutlet

@property (weak, nonatomic) IBOutlet UIView *viewEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UIView *viewPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@end

@implementation ViewController

@synthesize viewEmail = _viewEmail;
@synthesize tfEmail = _tfEmail;
@synthesize viewPassword = _viewPassword;
@synthesize tfPassword = _tfPassword;
@synthesize btnLogin = _btnLogin
;

#pragma mark - Lifecycle

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:true];
  _tfEmail.text = @"";
  _tfPassword.text = @"";
  [self.navigationController setNavigationBarHidden:true];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self initView];
  
  [Webservice requestGetUrl:API_TEST parameters:nil success:^(NSDictionary *responce) {
    NSError *error;
    LoanModel *loanModel = [[LoanModel alloc] initWithDictionary:responce error:&error];
    NSLog(@"value count of loans: %lu\n", (unsigned long)[loanModel.loans count]);
    
    for (int i = 0; i < [loanModel.loans count]; i++) {
      NSLog(@"value of a: %d\n", i);
      NSLog(@"name = %@", loanModel.loans[i].name);
    }
    
  } failure:^(NSError *error, NSInteger statusCode) {
    NSLog(@"error %@, status code = %ld", error.localizedDescription, (long)statusCode);
  }];
  
}

#pragma mark - Methods

- (void)initView {
  _btnLogin.layer.cornerRadius = 10;
  _btnLogin.clipsToBounds = YES;
  
  _viewEmail.layer.cornerRadius = 10;
  _viewEmail.clipsToBounds = YES;
  
  _viewPassword.layer.cornerRadius = 10;
  _viewPassword.clipsToBounds = YES;
}

#pragma mark - Actions

- (IBAction)doLogin:(id)sender {
  AccountManager *acc = [AccountManager sharedInstance];
  NSString *email = _tfEmail.text;
  NSString *password = _tfPassword.text;
  [acc signInWithEmail:email password:password completion:^(BOOL result) {
    if (result) {
      SimpleTableVC *vc = [[SimpleTableVC alloc]initWithNibName:@"SimpleTableVC" bundle:nil];
      [self.navigationController pushViewController:vc animated:true];
    } else {
      printf("Missing user or pwd");
    }
  }];
}

@end
