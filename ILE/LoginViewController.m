//
//  LoginViewController.m
//  ILE
//
//  Created by Jithin on 22/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize navigationBarView;
@synthesize radioLoginButton;
@synthesize radioNewRegButton;
@synthesize regemailTextField;
@synthesize regFirstNameTextField;
@synthesize regPasswordTextField;
@synthesize regRetypePasswordTextField;
@synthesize logEmailTextField;
@synthesize logPasswordTextField;
@synthesize submitButton;
@synthesize loginButton;
@synthesize loginScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // set navigation bar style
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"ileNavBar.png"]]];
    [loginScrollView setContentSize:CGSizeMake(320, 735)];
    
    //---------------------------------------------------
    // Add padding and change place holder color
    //---------------------------------------------------
    [regemailTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    [regFirstNameTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    [regPasswordTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    [regRetypePasswordTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    
    [logEmailTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    [logEmailTextField setEnabled:NO];
    [logPasswordTextField addLeftPaddingFortextField:10.0 color:[UIColor colorWithRed:78.0/255.0 green:70.0/255.0 blue:59.0/255.0 alpha:1.0]];
    [logPasswordTextField setEnabled:NO];
    [loginButton setUserInteractionEnabled:NO];
}

//---------------------------------------------------
//
//---------------------------------------------------
-(IBAction)gobackToParentViewController:(id)sender
{
    [UIView transitionWithView:self.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^(){
        
        [self.navigationController popViewControllerAnimated:NO];
        
    }completion:nil];
}

//---------------------------------------------------
// This methode for Radio button Action
//---------------------------------------------------

-(IBAction)radioButtonAction:(id)sender
{
    if ([sender tag] == 10) {
        [radioNewRegButton setBackgroundImage:[UIImage imageNamed:@"radioButtonSelected.png"] forState:UIControlStateNormal];
        [radioLoginButton setBackgroundImage:[UIImage imageNamed:@"radioButtonUnselected.png"] forState:UIControlStateNormal];
        [submitButton setUserInteractionEnabled:YES];
        [loginButton setUserInteractionEnabled:NO];
        
        [logPasswordTextField setEnabled:NO];
        [logEmailTextField setEnabled:NO];
        
        [regemailTextField setEnabled:YES];
        [regFirstNameTextField setEnabled:YES];
        [regPasswordTextField setEnabled:YES];
        [regRetypePasswordTextField setEnabled:YES];
        
    }else {
        [radioLoginButton setBackgroundImage:[UIImage imageNamed:@"radioButtonSelected.png"] forState:UIControlStateNormal];
        [radioNewRegButton setBackgroundImage:[UIImage imageNamed:@"radioButtonUnselected.png"] forState:UIControlStateNormal];
        
        [submitButton setUserInteractionEnabled:NO];
        [loginButton setUserInteractionEnabled:YES];
        
        [logPasswordTextField setEnabled:YES];
        [logEmailTextField setEnabled:YES];
        
        [regemailTextField setEnabled:NO];
        [regFirstNameTextField setEnabled:NO];
        [regPasswordTextField setEnabled:NO];
        [regRetypePasswordTextField setEnabled:NO];
    }
}


#pragma 
#pragma UItextFielDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField.tag == 50) {
        [loginScrollView setContentOffset:CGPointMake(0, 90.0) animated:YES];
    }
    
    if (textField.tag == 60) {
        [loginScrollView setContentOffset:CGPointMake(0, 120.0) animated:YES];
    }
    
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
       
    if (loginScrollView.contentOffset.y != 0) {
        [loginScrollView setContentOffset:CGPointMake(0.0, 0.0) animated:YES];
    }
    
    [textField resignFirstResponder];
    return  YES;
}

-(IBAction)gotoAccountsetupDetailsViewController:(id)sender
{
    UIViewController    *accountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ACCOUT_SETUP_VC"];
    [self.navigationController pushViewController:accountViewController animated:YES];
}

//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
