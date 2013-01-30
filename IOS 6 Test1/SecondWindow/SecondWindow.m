//
//  SecondWindow.m
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import "SecondWindow.h"

@interface SecondWindow ()

@end

@implementation SecondWindow

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)proceedToGame:(UISwipeGestureRecognizer *)proceedRecognizer {
//	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"YO" message:@"You Swiped!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
//
//	[alert show];
	
	ThirdWindow *urlReceiver = [[ThirdWindow alloc] initWithNibName:@"ThirdWindow" bundle:[NSBundle mainBundle]];
	urlReceiver.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:urlReceiver animated:YES completion:nil];
}

- (IBAction)dismissSelf:(UISwipeGestureRecognizer *)dismissRecognizer {
	self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self dismissViewControllerAnimated:YES completion:nil];
	
/*	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"YO" message:@"You Swiped Right!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[alert show];
*/
}

- (IBAction)funTime:(UISwipeGestureRecognizer *)funRecognizer {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"RICK ROLL" message:@"NEVER GONNA GIVE YOU UUUUP, etc." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[alert show];
}

@end
