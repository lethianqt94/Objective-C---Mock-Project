//
//  ViewController.m
//  Mock
//
//  Created by Neolab on 2/21/17.
//  Copyright © 2017 Neolab. All rights reserved.
//

#import "ViewController.h"
#import "AccountManager.h"

@interface ViewController ()

#pragma mark - IBOutlet

@property (weak, nonatomic) IBOutlet UIView *viewEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UIView *viewPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@end

@implementation ViewController

@synthesize viewEmail;
@synthesize tfEmail;
@synthesize viewPassword;
@synthesize tfPassword;
@synthesize btnLogin;

#pragma mark - Lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self initView];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:true];
  [self.navigationController setNavigationBarHidden:true];
}

#pragma mark - Methods

- (void)initView {
  btnLogin.layer.cornerRadius = 10;
  btnLogin.clipsToBounds = YES;
  
  viewEmail.layer.cornerRadius = 10;
  viewEmail.clipsToBounds = YES;
  
  viewPassword.layer.cornerRadius = 10;
  viewPassword.clipsToBounds = YES;
}

#pragma mark - Actions

- (IBAction)doLogin:(id)sender {
  AccountManager *acc = [AccountManager sharedInstance];
  NSString *email = tfEmail.text;
  NSString *password = tfPassword.text;
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
