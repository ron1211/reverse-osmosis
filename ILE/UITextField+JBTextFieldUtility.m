//
//  UITextField+JBTextFieldUtility.m
//  ILE
//
//  Created by Jithin on 22/03/15.
//  Copyright (c) 2015 Jithin.b. All rights reserved.
//

#import "UITextField+JBTextFieldUtility.h"

@implementation UITextField (JBTextFieldUtility)

-(void)addLeftPaddingFortextField:(CGFloat)padding color:(UIColor *)myColor
{
    UIView      *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, padding, self.frame.size.height)];
    [paddingView setBackgroundColor:[UIColor clearColor]];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView     = paddingView;
    if (myColor != nil) {
        [self setValue:myColor forKeyPath:@"_placeholderLabel.textColor"];
    }
    
}

@end
