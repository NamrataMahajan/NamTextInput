//
//  ViewController.m
//  NamTextInput
//
//  Created by Namrata on 10/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    screnHeight =[[UIScreen mainScreen]bounds].size.height;
    textFieldWidth =screenWidth-(3*kHorizontalPadding)-kAllUIElementHeight;
    logButtonXCoordinate = textFieldWidth +(2*kHorizontalPadding);
    displayLabelYCoordinate = kVerticalPadding +kAllUIElementHeight +100;
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 100, textFieldWidth, kAllUIElementHeight)];
    [myTextField setBorderStyle:UITextBorderStyleBezel];
    myTextField.delegate= self;
    [self.view addSubview:myTextField];

    
    logButton =[[UIButton alloc]initWithFrame:CGRectMake(logButtonXCoordinate, 100, kAllUIElementHeight, kAllUIElementHeight)];
    logButton.backgroundColor = [UIColor redColor];
    [logButton setTitle:@"Log" forState:UIControlStateNormal];
    logButton.layer.cornerRadius = kAllUIElementHeight/2;
    
    [logButton addTarget:self action:@selector(handlelog) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logButton];
    
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, displayLabelYCoordinate, screenWidth - (2*kHorizontalPadding), kAllUIElementHeight)];
    
    displayLabel.backgroundColor = [UIColor cyanColor];
    displayLabel.textColor =[UIColor blackColor];
    displayLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:displayLabel];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handlelog {
    [self displaContent:myTextField.text];
    
}
-(void)displaContent:(NSString *)content {
    if (content.length>0) {
        displayLabel.text = content;
    }
    else {
        displayLabel.text = @"Please enter value.";
        
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self displaContent:textField.text];
    [textField resignFirstResponder];
    return YES;
}

@end
