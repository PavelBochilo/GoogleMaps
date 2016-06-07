//
//  GMMainViewController.h
//  GoogleMaps
//
//  Created by Paul on 07.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface GMMainViewController : UIViewController <SlideNavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UISwitch *slideOutAnimationSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *shadowSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *panGestureSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *limitPanGestureSwitch;

- (IBAction)slideOutAnimationSwitchChanged:(id)sender;

- (IBAction)shadowSwitchSelected:(id)sender;
- (IBAction)enablePanGestureSelected:(id)sender;
- (IBAction)limitPanGestureSwitchChanged:(id)sender;
@end
