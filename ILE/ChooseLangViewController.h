//
//  ViewController.h
//  ILE
//
//  Created by Jithin on 20/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICETutorialController.h"

@interface ChooseLangViewController : UIViewController<ICETutorialControllerDelegate>

@property (strong, nonatomic) ICETutorialController *viewController;
@end

