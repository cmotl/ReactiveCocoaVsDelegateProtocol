//
//  SecondViewController.h
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelegateModalProtocol.h"
#import "DelegateModalViewController.h"

@interface DelegateViewController : UIViewController <DelegateModalProtocol>

@end
