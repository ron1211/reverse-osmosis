//
//  LoginViewController.h
//  ILE
//
//  Created by Jithin on 22/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITextField+JBTextFieldUtility.h"

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIButton *radioNewRegButton;
@property (strong, nonatomic) IBOutlet UIView *navigationBarView;
@property (strong, nonatomic) IBOutlet UITextField *regemailTextField;
@property (strong, nonatomic) IBOutlet UITextField *regFirstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *regPasswordTextField;
@property (strong, nonatomic) IBOutlet UITextField *regRetypePasswordTextField;
@property (strong, nonatomic) IBOutlet UIButton *radioLoginButton;
@property (strong, nonatomic) IBOutlet UITextField *logEmailTextField;
@property (strong, nonatomic) IBOutlet UITextField *logPasswordTextField;

@property (strong, nonatomic) IBOutlet UIButton *submitButton;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@property (strong, nonatomic) IBOutlet UIScrollView *loginScrollView;

@end
