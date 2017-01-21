//
//  SecondViewController.m
//  NSNotification-Exercise
//
//  Created by Alex Bearinger on 2017-01-21.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation SecondViewController

-(void)viewDidLoad{
    self.countLabel.text = [NSString stringWithFormat:@"%d", 0];
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notified:) name:@"stepped" object:nil];
}



-(void)notified:(NSNotification *)notification{
    NSDictionary *info = notification.userInfo;
    NSNumber *value = [info objectForKey:@"stepperValue"];
    self.countLabel.text = [NSString stringWithFormat:@"%@",value];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
