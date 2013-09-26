//
//  ReactiveModalViewController.m
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import "ReactiveModalViewController.h"

@interface ReactiveModalViewController ()

@end

@implementation ReactiveModalViewController

- (void)awakeFromNib
{
    self.reactiveModalSignal = [RACSubject subject];
}

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
    [self.reactiveModalSignal sendNext:@"Modal done"];
    [self.reactiveModalSignal sendCompleted];
}

@end
