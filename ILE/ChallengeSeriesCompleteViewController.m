//
//  ChallengeSeriesCompleteViewController.m
//  ILE
//
//  Created by Developer on 17/04/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "ChallengeSeriesCompleteViewController.h"
#import "ChallengeSeriesHomeViewController.h"

@interface ChallengeSeriesCompleteViewController ()

@end

@implementation ChallengeSeriesCompleteViewController
@synthesize navigationBarView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"whiteNavBarImg.png"]]];
}

-(IBAction)homeButtonClickAction:(id)sender
{
    //CHALLENGE_HOME_VC
    ChallengeSeriesHomeViewController    *accountViewController = (ChallengeSeriesHomeViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"CHALLENGE_HOME_VC"];
    
    NSLog(@"%@",self.navigationController.viewControllers);
    
    for (UIViewController *myVC in self.navigationController.viewControllers) {
        if ([myVC isKindOfClass:[ChallengeSeriesHomeViewController class]]) {
            [self.navigationController popToViewController:myVC animated:YES];
        }
    }
    
    //[self.navigationController pushViewController:accountViewController animated:YES];
    
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
