//
//  MainWindow.h
//  IOS 6 Test1
//
//  Created by Victor Eg Frølund on 29/01/135.
//  Copyright (c) 2013 Victor Eg Frølund. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondWindow.h"

@interface MainWindow : UIViewController

@property(nonatomic) SecondWindow *secondWindow;
-(IBAction) doSomething;

@end
