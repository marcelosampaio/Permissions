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
    
    // Prepare you info.plist (availables on the library)
//    NSCalendarsUsageDescription
//    NSPhotoLibraryUsageDescription
//    NSCameraUsageDescription
//    NSMicrophoneUsageDescription
//    NSCalendarsUsageDescription
//    NSLocationWhenInUseUsageDescription
//    NSLocationAlwaysUsageDescription
    
    
    
//   ---------------------
//   (all iOS permissions)
//   ---------------------
//    Calendar :
//    Key      :  Privacy - Calendars Usage Description
//    Value  :  $(PRODUCT_NAME) calendar events
//    
//    Reminder :
//    Key      :   Privacy - Reminders Usage Description
//    Value  :   $(PRODUCT_NAME) reminder use
//    
//    Contact :
//    Key       :   Privacy - Contacts Usage Description
//    Value    :  $(PRODUCT_NAME) contact use
//    
//    Photo :
//    Key       :  Privacy - Photo Library Usage Description
//    Value   :  $(PRODUCT_NAME) photo use
//    
//    Bluetooth Sharing :
//    Key       :  Privacy - Bluetooth Peripheral Usage Description
//    Value   :  $(PRODUCT_NAME) Bluetooth Peripheral use
//    
//    Microphone :
//    Key        :  Privacy - Microphone Usage Description
//    Value    :  $(PRODUCT_NAME) microphone use
//    
//    Camera :
//    Key       :  Privacy - Camera Usage Description
//    Value   :  $(PRODUCT_NAME) camera use
//    
//    Location :
//    Key      :  Privacy - Location Always Usage Description
//    Value  :  $(PRODUCT_NAME) location use
//    
//    Key       :  Privacy - Location When In Use Usage Description
//    Value   :  $(PRODUCT_NAME) location use
//    
//    Heath :
//    Key      :  Privacy - Health Share Usage Description
//    Value  :  $(PRODUCT_NAME) heath share use
//    
//    Key      :  Privacy - Health Update Usage Description
//    Value  :  $(PRODUCT_NAME) heath update use
//    
//    HomeKit :
//    Key      :  Privacy - HomeKit Usage Description
//    Value  :  $(PRODUCT_NAME) home kit use
//    
//    Media Library :
//    Key      :  Privacy - Media Library Usage Description
//    Value  :  $(PRODUCT_NAME) media library use
//    
//    Motion :
//    Key      :  Privacy - Motion Usage Description
//    Value  :  $(PRODUCT_NAME) motion use
//    
//    Speech Recognition :
//    Key      :  Privacy - Speech Recognition Usage Description
//    Value  :  $(PRODUCT_NAME) speech use
//    
//    SiriKit  : 
//    Key      :  Privacy - Siri Usage Description  
//    Value  :  $(PRODUCT_NAME) siri use
//    
//    TV Provider : 
//    Key      :  Privacy - TV Provider Usage Description   
//    Value  :  $(PRODUCT_NAME) tvProvider use
    
    
    
    
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
