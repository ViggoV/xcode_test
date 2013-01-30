//
//  ThirdWindow.h
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdWindow : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

@property(nonatomic) NSMutableData *received_data;

@property(nonatomic) IBOutlet UITextField *user_field;
@property(nonatomic) IBOutlet UITextField *user_password;
@property(nonatomic) IBOutlet UIButton *submit_button;
@property(nonatomic) IBOutlet UILabel *validating_label;
@property(nonatomic) IBOutlet UIActivityIndicatorView *loading_img;

- (IBAction)validateCredentials;
- (IBAction)dismissSelf;

//NSURLConnenctionDelegate methods
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;

//NSURLConnectionDataDelegate methods
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end
