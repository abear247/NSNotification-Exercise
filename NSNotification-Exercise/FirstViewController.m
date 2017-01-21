//
//  FirstViewController.m
//  NSNotification-Exercise
//
//  Created by Alex Bearinger on 2017-01-21.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;


@end

@implementation FirstViewController




-(void)viewDidDisappear:(BOOL)animated{
    NSNumber *stepValue = [NSNumber numberWithFloat:self.stepper.value];
    self.notificationDictionary = @{@"stepperValue" : stepValue};
    NSNotificationCenter *notificationcenter = [NSNotificationCenter defaultCenter];
    NSNotification *tapped = [[NSNotification alloc] initWithName:@"stepped" object:self userInfo:self.notificationDictionary];
    [notificationcenter postNotification:tapped];
    
}

- (IBAction)stepperTapped:(id)sender {
  
    NSNotification *tapped = [[NSNotification alloc] initWithName:@"stepped" object:self userInfo:self.notificationDictionary];
    [[NSNotificationCenter defaultCenter] postNotification:tapped];
    
}



@end
