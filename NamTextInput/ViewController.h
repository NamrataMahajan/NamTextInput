//
//  ViewController.h
//  NamTextInput
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kHorizontalPadding 20.0
#define kVerticalPadding 20.0
#define kAllUIElementHeight 50.0
#define klogButtonWidth 100.0

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    CGFloat screenWidth;
    CGFloat screnHeight;
    CGFloat  displayLabelYCoordinate;
    CGFloat textFieldWidth;
    CGFloat logButtonXCoordinate;
    UILabel *displayLabel;
    UIButton *logButton;
    UITextField *myTextField;
    
}


@end

