//
//  ViewController.m
//  Permissions
//
//  Created by Marcelo Sampaio on 5/12/17.
//  Copyright © 2017 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

#import <ClusterPrePermissions/ClusterPrePermissions.h>



@interface ViewController ()

@end

@implementation ViewController



#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Prepare you info.plist
//    NSCalendarsUsageDescription
//    NSPhotoLibraryUsageDescription
//    NSCameraUsageDescription
//    NSMicrophoneUsageDescription
//    NSCalendarsUsageDescription
//    NSLocationWhenInUseUsageDescription
//    NSLocationAlwaysUsageDescription
    
    
    
    // Permissions Framework
    ClusterPrePermissions *permissions = [ClusterPrePermissions sharedPermissions];
    [permissions showPhotoPermissionsWithTitle:@"Access your photos?"
                                       message:@"Your message here"
                               denyButtonTitle:@"Not Now"
                              grantButtonTitle:@"Give Access"
                             completionHandler:^(BOOL hasPermission,
                                                 ClusterDialogResult userDialogResult,
                                                 ClusterDialogResult systemDialogResult) {
                                 if (hasPermission) {
                                     // Continue with your code here
                                     NSLog(@"Permission granted! ");
                                 } else {
                                     // Handle access not being available
                                     NSLog(@"You don't have permissions");
                                 }
                             }];
    
    

    
    
    
}




@end
