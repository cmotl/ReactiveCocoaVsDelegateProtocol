//
//  DelegateModalViewController.m
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import "DelegateModalViewController.h"

@interface DelegateModalViewController ()

@end

@implementation DelegateModalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)done:(id)sender
{
    if([self.delegate respondsToSelector:@selector(done:)])
    {
        [self.delegate performSelector:@selector(done:) withObject:@"Delegate done"];
    }
}

@end
