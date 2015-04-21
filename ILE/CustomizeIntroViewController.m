//
//  CustomizeIntroViewController.m
//  ILE
//
//  Created by Jithin on 26/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "CustomizeIntroViewController.h"

@interface CustomizeIntroViewController ()

@end

@implementation CustomizeIntroViewController
@synthesize bottomBarView;
@synthesize navigationBarView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"ileNavBar.png"]]];
    
    [bottomBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"accountBottomBarBG.png"]]];
}

-(IBAction)backButtonAction:(id)sender
{
    [UIView transitionWithView:self.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^(){
        
        [self.navigationController popViewControllerAnimated:NO];
        
    }completion:nil];
}

-(IBAction)skipButtonAction:(id)sender
{
    //[self];
}

-(IBAction)nextButtonaction:(id)sender
{
    //CUSTOM_WORK_VC
    UIViewController    *accountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CUSTOM_WORK_VC"];
    [self.navigationController pushViewController:accountViewController animated:YES];
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
