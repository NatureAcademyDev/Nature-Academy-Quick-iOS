//
//  HomeworkViewController.m
//  Nature Academy Quick
//
//  Created by alisago on 3/5/17.
//  Copyright © 2017 alisago. All rights reserved.
//

#import "HomeworkViewController.h"

@interface HomeworkViewController ()

@end

@implementation HomeworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)recognizer
{
        [self performSegueWithIdentifier:@"homeworkToGrades" sender:self];}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
