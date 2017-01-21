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


-(instancetype)init{
    self = [super init];
    if (self)
        _notificationDictionary = [NSDictionary new];
    return self;
}

- (IBAction)stepperTapped:(id)sender {
    NSNumber *stepValue = [NSNumber numberWithFloat:self.stepper.value];
    self.notificationDictionary = @{@"stepperValue" : stepValue};
    NSNotificationCenter *notificationcenter = [NSNotificationCenter defaultCenter];
    NSNotification *tapped = [[NSNotification alloc] initWithName:@"stepped" object:self userInfo:self.notificationDictionary];
    [notificationcenter postNotification:tapped];
    
}



@end
