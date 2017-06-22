//
//  ViewController.m
//  PushNotification
//
//  Created by abc on 5/2/17.
//  Copyright © 2017 HArsh. All rights reserved.
//

#import "ViewController.h"
@import UserNotifications;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GreenContentView.hidden=YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)notification:(id)sender
{
    UILocalNotification *notification =[[UILocalNotification alloc]init ];
    notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:30];
    notification.timeZone=[NSTimeZone defaultTimeZone];
    notification.alertTitle=@"App LocalNotification";
    notification.alertBody=@"Here's a notification for you. This will happen every minute forever now.";
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    NSLog(@"press home button LOCALNOTIFICATION IS show after 30 second");

    
    [UIView transitionWithView:self.GreenContentView
                      duration:1
                       options:UIViewAnimationOptionTransitionCurlDown
                    animations:^{
                        self.GreenContentView.hidden=NO;
              }
                    completion:NULL];
    
    
    
    
    
//    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
//    content.title = @"Don't forget";
//    content.body = @"Buy some milk";
//    content.sound = [UNNotificationSound defaultSound];
    
   //// //>>>>>>>>>w LocalNotification the Time
    //UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:30                                                                                                  repeats:NO];
    
    
    
    ///>>>>>>>>localnotification Iteh DAYTE
//    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:3600];
//    NSDateComponents *triggerDate = [[NSCalendar currentCalendar]
//                                     components:NSCalendarUnitYear +
//                                     NSCalendarUnitMonth + NSCalendarUnitDay +
//                                     NSCalendarUnitHour + NSCalendarUnitMinute +
//                                     NSCalendarUnitSecond fromDate:date];
//    UNCalendarNotificationTrigger *triggerCalender = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:triggerDate                                                                                                    repeats:NO];
    
    }
@end
