//
//  CustomizeWorkViewController.h
//  ILE
//
//  Created by Jithin on 27/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomizeWorkViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIScrollView *customWorkScrollView;
@property (strong, nonatomic) IBOutlet UIView *navigationBarView;
@property (strong, nonatomic) IBOutlet UIView   *bottomBarView;

@end
