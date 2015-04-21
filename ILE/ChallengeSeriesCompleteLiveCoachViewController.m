//
//  ChallengeSeriesCompleteLiveCoachViewController.m
//  ILE
//
//  Created by Developer on 17/04/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "ChallengeSeriesCompleteLiveCoachViewController.h"
#import "ChallengeSeriesHomeViewController.h"

@interface ChallengeSeriesCompleteLiveCoachViewController ()

@end

@implementation ChallengeSeriesCompleteLiveCoachViewController
@synthesize navigationBarView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"whiteNavBarImg.png"]]];
    [self.tabBarController.tabBar setHidden:YES];
}

-(IBAction)homeButtonClickAction:(id)sender
{
    //CHALLENGE_HOME_VC
    for (UIViewController *myVC in self.navigationController.viewControllers) {
        if ([myVC isKindOfClass:[ChallengeSeriesHomeViewController class]]) {
            [self.navigationController popToViewController:myVC animated:YES];
        }
    }
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
