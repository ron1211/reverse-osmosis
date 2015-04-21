//
//  ViewController.m
//  ILE
//
//  Created by Jithin on 20/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "ChooseLangViewController.h"

@interface ChooseLangViewController ()

@end

@implementation ChooseLangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ICETutorialPage *layer1 = [[ICETutorialPage alloc] initWithTitle:@""
                                                            subTitle:@""
                                                         pictureName:@"IntroPage1.png"
                                                            duration:3.0];
    ICETutorialPage *layer2 = [[ICETutorialPage alloc] initWithTitle:@""
                                                            subTitle:@""
                                                         pictureName:@"IntroPage2.png"
                                                            duration:3.0];
    ICETutorialPage *layer3 = [[ICETutorialPage alloc] initWithTitle:@""
                                                            subTitle:@""
                                                         pictureName:@"IntroPage3.png"
                                                            duration:3.0];
    ICETutorialPage *layer4 = [[ICETutorialPage alloc] initWithTitle:@""
                                                            subTitle:@""
                                                         pictureName:@"IntroPage4.png"
                                                            duration:3.0];
    
    NSArray *tutorialLayers = @[layer1,layer2,layer3,layer4];
    
    // Set the common style for the title.
    ICETutorialLabelStyle *titleStyle = [[ICETutorialLabelStyle alloc] init];
    [titleStyle setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17.0f]];
    [titleStyle setTextColor:[UIColor whiteColor]];
    [titleStyle setLinesNumber:1];
    [titleStyle setOffset:180];
    [[ICETutorialStyle sharedInstance] setTitleStyle:titleStyle];
    
    // Set the subTitles style with few properties and let the others by default.
    [[ICETutorialStyle sharedInstance] setSubTitleColor:[UIColor whiteColor]];
    [[ICETutorialStyle sharedInstance] setSubTitleOffset:150];
    
    // Init tutorial.
    self.viewController = [[ICETutorialController alloc] initWithPages:tutorialLayers
                                                              delegate:self];
    
}

-(IBAction)englishLanguageButtonClick:(id)sender
{
    [self.view addSubview:self.viewController.view];
}

#pragma mark - ICETutorialController delegate
- (void)tutorialController:(ICETutorialController *)tutorialController scrollingFromPageIndex:(NSUInteger)fromIndex toPageIndex:(NSUInteger)toIndex {
    NSLog(@"Scrolling from page %lu to page %lu.", (unsigned long)fromIndex, (unsigned long)toIndex);
}

- (void)tutorialControllerDidReachLastPage:(ICETutorialController *)tutorialController {
    NSLog(@"Tutorial reached the last page.");
}

- (void)tutorialController:(ICETutorialController *)tutorialController didClickOnLeftButton:(UIButton *)sender {
    NSLog(@"Button 1 pressed.");
}

- (void)tutorialController:(ICETutorialController *)tutorialController didClickOnRightButton:(UIButton *)sender {
    NSLog(@"Button 2 pressed.");
    NSLog(@"Auto-scrolling stopped.");
    
    [self.viewController.view removeFromSuperview];
    
    [UIView transitionWithView:self.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromRight animations:^(){
        
        UIViewController    *loginView = [self.storyboard instantiateViewControllerWithIdentifier:@"LOGIN_VC"];
        [self.navigationController pushViewController:loginView animated:NO];        
    }completion:nil];
    
    /*
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:0.80];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromRight
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:menu animated:YES];
    [UIView commitAnimations];
    */
    //[self.viewController stopScrolling];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
