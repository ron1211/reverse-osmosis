//
//  AccountSetupViewController.m
//  ILE
//
//  Created by Jithin on 22/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "AccountSetupViewController.h"

@interface AccountSetupViewController ()

@end

@implementation AccountSetupViewController
@synthesize navigationBarView;
@synthesize levelFirstButton;
@synthesize levelImageGraph;
@synthesize levelSecondButton;
@synthesize accountscrollView;
@synthesize bottomBarView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"ileNavBar.png"]]];
    [accountscrollView setContentSize:CGSizeMake(accountscrollView.frame.size.width, 830)];
    [bottomBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"accountBottomBarBG.png"]]];
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
//
//---------------------------------------------------
-(IBAction)gobackToParentViewControllerNoAnimation:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)levelButtonClickAction:(id)sender {
   
    if ([sender tag] == 10) {
        [levelFirstButton setBackgroundImage:[UIImage imageNamed:@"graphLevelBtn1Selected.png"] forState:UIControlStateNormal];
        [levelSecondButton setBackgroundImage:[UIImage imageNamed:@"graphLevelBtn2.png"] forState:UIControlStateNormal];
        [levelImageGraph setImage:[UIImage imageNamed:@"A1popup.png"]];
        
    }else {
        [levelFirstButton setBackgroundImage:[UIImage imageNamed:@"graphLevelBtn1.png"] forState:UIControlStateNormal];
        [levelSecondButton setBackgroundImage:[UIImage imageNamed:@"graphLevelBtn2Selected.png"] forState:UIControlStateNormal];
        [levelImageGraph setImage:[UIImage imageNamed:@"A2popup.png"]];
    }
    
}

-(IBAction)doneButtonAction:(id)sender
{
    //CUSTOM_INTRO_VC
    
    [UIView transitionWithView:self.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromRight animations:^(){
        
        UIViewController    *accountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CUSTOM_INTRO_VC"];
        [self.navigationController pushViewController:accountViewController animated:NO];
        
    }completion:nil];
    
    
}

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
