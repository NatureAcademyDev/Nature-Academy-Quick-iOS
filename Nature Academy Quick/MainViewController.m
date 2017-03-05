//
//  ViewController.m
//  Nature Academy Quick
//
//  Created by alisago on 3/5/17.
//  Copyright © 2017 alisago. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
        [self performSegueWithIdentifier:@"mainToWeeklyWisdom" sender:self];
    else
        [self performSegueWithIdentifier:@"mainToHomework" sender:self];
}


@end
