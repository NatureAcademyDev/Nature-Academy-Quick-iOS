//
//  WeeklyWisdomViewController.m
//  Nature Academy Quick
//
//  Created by alisago on 3/5/17.
//  Copyright © 2017 alisago. All rights reserved.
//

#import "WeeklyWisdomViewController.h"

@interface WeeklyWisdomViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *weeklyWisdomView;

@end

@implementation WeeklyWisdomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    // Add border to the calendar view
    self.weeklyWisdomView.layer.borderColor = [UIColor blackColor].CGColor;
    self.weeklyWisdomView.layer.borderWidth = 1.0f;
    
    
    // Fill the calendar view from the web
    NSString* strURL = @"https://www.google.com";
    
    NSURL *url = [NSURL URLWithString:strURL];
    
    NSURLRequest* request=[NSURLRequest requestWithURL:url];
    [self.weeklyWisdomView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
        [self performSegueWithIdentifier:@"wisdomToGrades" sender:self];
    else
        [self performSegueWithIdentifier:@"wisdomToMain" sender:self];
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
