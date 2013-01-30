//
//  MainWindow.m
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import "MainWindow.h"

@interface MainWindow ()

@end

@implementation MainWindow

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

- (IBAction) doSomething {
	
	self.secondWindow = [[SecondWindow alloc] initWithNibName:@"SecondWindow" bundle:[NSBundle mainBundle]];
	
	[self presentViewController:self.secondWindow animated:YES completion:nil];
	
}

@end
