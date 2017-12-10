//
//  ViewController.m
//  AlertsView
//
//  Created by Mac on 12/8/17.
//  Copyright © 2017 BandarHelal @Golden_Apple9. All rights reserved.
// Follow me in Twitter https://twitter.com/Golden_Apple9

#import "ViewController.h"
#import "SCLAlertView.h"
#import "Popup.h"

@interface ViewController () <PopupDelegate>

@end

@implementation ViewController


- (IBAction)test:(id)sender {
    Popup *PAL = [[Popup alloc] initWithTitle:@"test" subTitle:@"test" cancelTitle:@"Done" successTitle:nil];
                                                                                        // if you want another button change nil to @"tite button 2"
    [PAL setDelegate:self];
    [PAL showPopup];
    // PopAlert Propproperties
    [PAL setBackgroundBlurType:PopupBackGroundBlurTypeDark];
    // [PAL setBackgroundColor:[UIColor whiteColor]];
    // [PAL setBorderColor:[UIColor blackColor]];
    [PAL setTitleColor:[UIColor darkTextColor]];
    [PAL setSubTitleColor:[UIColor darkTextColor]];
    [PAL setSuccessBtnColor:[UIColor blueColor]];
    [PAL setSuccessTitleColor:[UIColor whiteColor]];
    [PAL setCancelBtnColor:[UIColor colorWithRed:84/255.0f green:123/255.0f blue:244/255.0f alpha:1.0f]];
    [PAL setCancelTitleColor:[UIColor whiteColor]];
    
}


- (IBAction)AlertDef:(id)sender {
    UIAlertView *AlertDef = [[UIAlertView alloc] initWithTitle:@"hi" message:@"hi" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
        // if you want another button change nil to @"tite button 2"
    [AlertDef show];
    
}

- (IBAction)SCLA:(id)sender {
    SCLAlertView *SCLA = [[SCLAlertView alloc] initWithNewWindow];
    SCLA.backgroundType = SCLAlertViewBackgroundBlur;
    SCLA.customViewColor = [UIColor colorWithRed:84/255.0f green:123/255.0f blue:244/255.0f alpha:1.0f];
    [SCLA addButton:@"@Golden_Apple9" actionBlock:^{
        if ([[UIApplication sharedApplication]
             respondsToSelector:@selector(openURL:options:completionHandler:)]) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/Golden_Apple9"] options:@{} completionHandler:NULL];
        }else{
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/Golden_Apple9"] options:@{} completionHandler:NULL];
        }
    }];
    
    // if you want a 3 button actvite this codes
    //[SCLA addButton:@"button 2" actionBlock:^{
    //    NSLog(@"button2");
    // }];
    
    [SCLA showSuccess:@"hi" subTitle:@"hi" closeButtonTitle:@"Done" duration:0.0f];
    
    // SCLAlertView Propproperties
    
    // Dismiss on tap outside (Default is NO)
    // SCLA.shouldDismissOnTapOutside = YES;
    
    // Hide animation type (Default is SCLAlertViewHideAnimationFadeOut)
    // SCLA.hideAnimationType = SCLAlertViewHideAnimationSlideOutToBottom;
    
    // Set custom tint color for icon image.
    // SCLA.iconTintColor = [UIColor purpleColor];
    
    // Override top circle tint color with background color
    // SCLA.tintTopCircle = NO;
    
    // Set custom corner radius for SCLAlertView
    // SCLA.cornerRadius = 13.0f;
    
    // Overwrite SCLAlertView background color
    // alert.backgroundViewColor = [UIColor cyanColor];
    
    // Returns if the alert is visible or not.
    // alert.isVisible;
    
    // Make the top circle icon larger
    // alert.useLargerIcon = YES;

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
