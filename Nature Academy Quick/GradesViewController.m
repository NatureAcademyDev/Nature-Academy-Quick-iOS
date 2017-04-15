//
//  GradesViewController.m
//  Nature Academy Quick
//
//  Created by alisago on 3/5/17.
//  Copyright © 2017 alisago. All rights reserved.
//

#import "GradesViewController.h"

@interface GradesViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *powerSchoolView;

@end

@implementation GradesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    // Add border to the calendar view
    self.powerSchoolView.layer.borderColor = [UIColor blackColor].CGColor;
    self.powerSchoolView.layer.borderWidth = 1.0f;
    
    
    // Fill the calendar view from the web
    NSString* strURL = @"https://grades.slvusd.org/public/";
    
    NSURL *url = [NSURL URLWithString:strURL];
    
    NSURLRequest* request=[NSURLRequest requestWithURL:url];
    [self.powerSchoolView loadRequest:request];
    
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
        [self performSegueWithIdentifier:@"gradesToHomework" sender:self];
    else
        [self performSegueWithIdentifier:@"gradesToWeeklyWisdom" sender:self];}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
