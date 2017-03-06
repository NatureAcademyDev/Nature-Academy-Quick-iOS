//
//  ViewController.m
//  Nature Academy Quick
//
//  Created by alisago on 3/5/17.
//  Copyright © 2017 alisago. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *homeworkGoogleCalendarView;
@property (weak, nonatomic) IBOutlet UIWebView *wisdomOfWeekView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    // Add border to the calendar view
    self.homeworkGoogleCalendarView.layer.borderColor = [UIColor blackColor].CGColor;
    self.homeworkGoogleCalendarView.layer.borderWidth = 1.0f;
    
    // Add border to the calendar view
    self.wisdomOfWeekView.layer.borderColor = [UIColor blackColor].CGColor;
    self.wisdomOfWeekView.layer.borderWidth = 1.0f;
    
    
    // Fill the calendar view from the web
    NSString* strURL = @"https://calendar.google.com/calendar/embed?mode=WEEK&height=600&wkst=2&bgcolor=%23FFFFFF&src=slvusd.org_3gna4bju3m4qji11ama7b85kek@group.calendar.google.com&color=%23711616&src=slvusd.org_02tvisam3pcog9dmn8ejrgi8mk@group.calendar.google.com&color=%230D7813&src=slvusd.org_p68uqeo4fa5sdd2li7om08p4ag@group.calendar.google.com&color=%23182C57&src=slvusd.org_boudqi1ln6v0udktggt0rkip0k@group.calendar.google.com&color=%23B1365F&src=slvusd.org_286euvklrcup2jensi3ikl9r7s@group.calendar.google.com&color=%238C500B&src=slvusd.org_5ne3m8onl7dlvggbljihrog8sc@group.calendar.google.com&color=%23853104&src=slvusd.org_s9o1rfb2c42uo0lismpiund8m4@group.calendar.google.com&color=%23125A12&ctz=America/Los_Angeles&pli=1";
    
    NSURL *url = [NSURL URLWithString:strURL];
    
    NSURLRequest* request=[NSURLRequest requestWithURL:url];
    [self.homeworkGoogleCalendarView loadRequest:request];
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"wisdomOfWeek" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [self.wisdomOfWeekView loadHTMLString:htmlString baseURL: [[NSBundle mainBundle] bundleURL]];
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
