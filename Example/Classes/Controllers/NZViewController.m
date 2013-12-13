//
//  NZViewController.m
//  UIDevice-Helpers
//
//  Created by Bruno Furtado on 13/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet UISwitch *iOS7SupportedFeatures;
@property (strong, nonatomic) IBOutlet UISwitch *is4InchScreen;
@property (strong, nonatomic) IBOutlet UISwitch *isOS5;
@property (strong, nonatomic) IBOutlet UISwitch *isOS6;

@end



@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIDevice *currentDevice = [UIDevice currentDevice];
    
    [_iOS7SupportedFeatures setOn:[currentDevice isSupportedOS7Features]];
    
    [_isOS5 setOn:[currentDevice isSystemGreaterOS5]];
    [_isOS6 setOn:[currentDevice isSystemGreaterOS6]];
    
    UIDeviceScreenSize screenSize = [currentDevice screenSize];
    [_is4InchScreen setOn:(screenSize == UIDeviceScreenSize4Inch)];
}

@end