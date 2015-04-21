//
//  CustomizeWorkViewController.m
//  ILE
//
//  Created by Jithin on 27/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "CustomizeWorkViewController.h"

@interface CustomizeWorkViewController ()

@end

@implementation CustomizeWorkViewController
@synthesize customWorkScrollView;
@synthesize bottomBarView;
@synthesize navigationBarView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [customWorkScrollView setContentSize:CGSizeMake(customWorkScrollView.frame.size.width, 510)];
    //CUSTOM_CAREER_VC
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"ileNavBar.png"]]];
    
    [bottomBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"accountBottomBarBG.png"]]];
}

-(IBAction)backButtonAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)skipButtonAction:(id)sender
{
    //[self];
}

-(IBAction)nextButtonaction:(id)sender
{
    //CUSTOM_WORK_VC
    UIViewController    *accountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CUSTOM_CAREER_VC"];
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
