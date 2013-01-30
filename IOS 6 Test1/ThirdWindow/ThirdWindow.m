//
//  ThirdWindow.m
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import "ThirdWindow.h"

@interface ThirdWindow ()

@end

@implementation ThirdWindow

//NSURLConnenctionDelegate methods
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"An error occured" message:error.description delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[alert show];
	
	self.validating_label.hidden = true;
	[self.loading_img stopAnimating];
	
	self.user_field.enabled = true;
	self.user_password.enabled = true;
	self.submit_button.enabled = true;
	
}

//NSURLConnectionDataDelegate methods
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	
	[self.received_data appendData:data];
	
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
	
	NSString *responseString;
	
	if (self.received_data) {
		responseString = [[NSString alloc] initWithData:self.received_data encoding:NSUTF8StringEncoding];
	} else {
		responseString = @"No data received";
	}
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Transaction complete" message:responseString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[alert show];
	
	self.received_data = [[NSMutableData alloc] initWithLength:0];
	
	self.validating_label.hidden = true;
	[self.loading_img stopAnimating];
	
	self.user_field.enabled = true;
	self.user_password.enabled = true;
	self.submit_button.enabled = true;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.validating_label.hidden = true;
		self.loading_img.hidesWhenStopped = true;
		
		self.received_data = [[NSMutableData alloc] initWithLength:0];
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

- (IBAction)validateCredentials {
	
	NSString *urlString = @"http://intense-lake-4637.herokuapp.com/authenticate";
	NSURL *urlForRequest = [[NSURL alloc] initWithString:urlString];
	NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:urlForRequest];
	[urlRequest setHTTPMethod:@"POST"];
	NSString *bodyText = [NSString stringWithFormat:@"uid=%@&pwd=%@", self.user_field.text, self.user_password.text];
	[urlRequest setHTTPBody:[bodyText dataUsingEncoding:NSUTF8StringEncoding]];
	
	NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	if (conn) {
		self.user_field.enabled = false;
		self.user_password.enabled = false;
		self.submit_button.enabled = false;
		
		self.validating_label.hidden = false;
		self.loading_img.hidden = false;
		[self.loading_img startAnimating];
	} else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"The connection failed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
		
		[alert show];
		
	}
}

- (IBAction)dismissSelf {
	self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end
