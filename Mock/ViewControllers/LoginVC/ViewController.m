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

#pragma mark - Override

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
  
  NSString *email = tfEmail.text;
  NSString *password = tfPassword.text;
  
  return (![email  isEqual: @""] && ![password  isEqual: @""]);
}

@end
