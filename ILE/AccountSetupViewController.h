//
//  AccountSetupViewController.h
//  ILE
//
//  Created by Jithin on 22/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYPopoverController.h"

@interface AccountSetupViewController : UIViewController
{
    WYPopoverController                     *popoverController;
}
@property (strong, nonatomic) IBOutlet UIView *navigationBarView;
@property (strong, nonatomic) IBOutlet UIButton *levelFirstButton;
@property (strong, nonatomic) IBOutlet UIButton *levelSecondButton;
@property (strong, nonatomic) IBOutlet UIImageView  *levelImageGraph;
@property (strong, nonatomic) IBOutlet UIScrollView *accountscrollView;
@property (strong, nonatomic) IBOutlet UIView   *bottomBarView;
@end
