//
//  ChallengeSeriesHomeViewController.m
//  ILE
//
//  Created by Jithin on 29/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "ChallengeSeriesHomeViewController.h"

@interface ChallengeSeriesHomeViewController ()

@end

@implementation ChallengeSeriesHomeViewController
@synthesize bottomBarView;
@synthesize navigationBarView;
@synthesize verticalScrollView;
@synthesize verticalPageController;
@synthesize horizontalLongScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    verticalScrollView.delegate = self;
    verticalScrollView.pagingEnabled = YES;
    verticalScrollView.showsHorizontalScrollIndicator = NO;
    verticalScrollView.showsVerticalScrollIndicator = NO;
    //verticalPageController.
    
    [horizontalLongScrollView setContentSize:CGSizeMake(self.view.frame.size.width, 700)];
    [navigationBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"chanllengeSeriesNavBar.png"]]];
    
    [bottomBarView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"accountBottomBarBG.png"]]];
    [self createverticalScrollViewContent];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    CGFloat pageWidth = self.verticalScrollView.frame.size.width;
    int page = floor((self.verticalScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    verticalPageController.currentPage = page;
}

-(void)createverticalScrollViewContent
{
    for(int i=0; i<5; i++)
    {
        CGRect frame;
        frame.origin.x = (self.verticalScrollView.frame.size.width * i)+10;
        frame.origin.y = 0;
        frame.size.height = self.verticalScrollView.frame.size.height;
        frame.size.width = self.verticalScrollView.frame.size.width - 20;
        
        NSLog(@"%@",NSStringFromCGRect(frame));
        
        UIImageView     *myImageView = [[UIImageView alloc] initWithFrame:frame];
        [myImageView setImage:[UIImage imageNamed:@"scrollViewImg1.png"]];
        [self.verticalScrollView addSubview:myImageView];
    }
    
    self.verticalScrollView.contentSize = CGSizeMake(self.verticalScrollView.frame.size.width * 5, self.verticalScrollView.frame.size.height);
}

-(IBAction)scrollButtonAction:(id)sender
{
    //ILE_TABABR_CONTROLLER
    
    
    UIStoryboard * storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UITabBarController *tabBarController = (UITabBarController *)[storyboard instantiateViewControllerWithIdentifier:@"ILE_TABABR_CONTROLLER"];
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    
    
    tabBarItem1.selectedImage = [[UIImage imageNamed:@"tabbarIcon1ON.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem1.image = [[UIImage imageNamed:@"tabbarIcon1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [tabBarItem1 setImageInsets:UIEdgeInsetsMake(5, 0, -5, 0)];
    
    
    tabBarItem2.selectedImage = [[UIImage imageNamed:@"tabbarIcon2ON.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem2.image = [[UIImage imageNamed:@"tabbarIcon2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [tabBarItem2 setImageInsets:UIEdgeInsetsMake(5, 0, -5, 0)];
    
    tabBarItem3.selectedImage = [[UIImage imageNamed:@"tabbarIcon3ON.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem3.image = [[UIImage imageNamed:@"tabbarIcon3.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [tabBarItem3 setImageInsets:UIEdgeInsetsMake(5, 0, -5, 0)];
    
    
    tabBarItem4.selectedImage = [[UIImage imageNamed:@"tabbarIcon4ON.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem4.image = [[UIImage imageNamed:@"tabbarIcon4.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [tabBarItem4 setImageInsets:UIEdgeInsetsMake(5, 0, -5, 0)];
    
    /*
    tabBarItem5.selectedImage = [[UIImage imageNamed:@"profileSelected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem5.image = [[UIImage imageNamed:@"profileNormal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    [tabBarItem5 setImageInsets:UIEdgeInsetsMake(5, 0, -5, 0)];
    
    //tabBarItem1.title = @"";
    //self.flipBoardNVC = [[FlipBoardNavigationController alloc]initWithRootViewController:self.mainVC];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    */
    
    //UIViewController    *accountViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ILE_TABABR_CONTROLLER"];
    [self.navigationController pushViewController:tabBarController animated:YES];
    
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
