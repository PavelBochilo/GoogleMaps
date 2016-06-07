//
//  GMMainViewController.m
//  GoogleMaps
//
//  Created by Paul on 07.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import "GMMainViewController.h"
#import "GMLeftMenuViewController.h"

@interface GMMainViewController ()

@end

@implementation GMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.panGestureSwitch.on = [SlideNavigationController sharedInstance].enableSwipeGesture;
    self.shadowSwitch.on = [SlideNavigationController sharedInstance].enableShadow;
    self.limitPanGestureSwitch.on = ([SlideNavigationController sharedInstance].panGestureSideOffset == 0) ? NO : YES;
    self.slideOutAnimationSwitch.on = ((GMLeftMenuViewController *)[SlideNavigationController sharedInstance].leftMenu).slideOutAnimationEnabled;
    
}
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)shadowSwitchSelected:(UISwitch *)sender {
    [SlideNavigationController sharedInstance].enableShadow = sender.isOn;
}

- (IBAction)enablePanGestureSelected:(UISwitch *)sender {
    [SlideNavigationController sharedInstance].enableSwipeGesture = sender.isOn;
}

- (IBAction)limitPanGestureSwitchChanged:(UISwitch *)sender {
    [SlideNavigationController sharedInstance].panGestureSideOffset = (sender.isOn) ? 50 : 0;
    
}
- (IBAction)slideOutAnimationSwitchChanged:(UISwitch *)sender {
    
    ((GMLeftMenuViewController *)[SlideNavigationController sharedInstance].leftMenu).slideOutAnimationEnabled = sender.isOn;
   
}



//- (NSInteger)indexFromPixels:(NSInteger)pixels
//{
//    if (pixels == 60)
//        return 0;
//    else if (pixels == 120)
//        return 1;
//    else
//        return 2;
//}
//
//- (NSInteger)pixelsFromIndex:(NSInteger)index
//{
//    switch (index)
//    {
//        case 0:
//            return 60;
//            
//        case 1:
//            return 120;
//            
//        case 2:
//            return 200;
//            
//        default:
//            return 0;
//    }
//}


@end
