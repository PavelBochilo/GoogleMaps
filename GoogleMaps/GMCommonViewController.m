//
//  GMCommonViewController.m
//  GoogleMaps
//
//  Created by Paul on 07.06.16.
//  Copyright © 2016 Paul. All rights reserved.
//

#import "GMCommonViewController.h"

@interface GMCommonViewController () {

    GMSMapView *mapView;
}


@end

@implementation GMCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Common  Map";
    
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:53.9045398
                                                            longitude:27.561524400000053                                                                 zoom:10];
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    
    self.view = mapView;
    
    
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
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

@end
