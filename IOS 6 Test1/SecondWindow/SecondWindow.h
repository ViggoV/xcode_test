//
//  SecondWindow.h
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdWindow.h"

@interface SecondWindow : UIViewController

@property(nonatomic, strong) IBOutlet UISwipeGestureRecognizer *beginSwipeRecognizer;

- (IBAction)proceedToGame:(UISwipeGestureRecognizer *)proceedRecognizer;
- (IBAction)dismissSelf:(UISwipeGestureRecognizer *)dismissRecognizer;
- (IBAction)funTime:(UISwipeGestureRecognizer *)funRecognizer;

@end
