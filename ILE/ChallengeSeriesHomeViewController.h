//
//  ChallengeSeriesHomeViewController.h
//  ILE
//
//  Created by Jithin on 29/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChallengeSeriesHomeViewController : UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIView *navigationBarView;
@property (strong, nonatomic) IBOutlet UIView   *bottomBarView;
@property (strong, nonatomic) IBOutlet UIScrollView *verticalScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *verticalPageController;
@property (strong, nonatomic) IBOutlet UIScrollView *horizontalLongScrollView;

@end
