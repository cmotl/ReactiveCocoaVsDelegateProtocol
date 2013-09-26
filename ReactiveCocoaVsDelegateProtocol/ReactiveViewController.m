//
//  FirstViewController.m
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import "ReactiveViewController.h"

@interface ReactiveViewController ()

@end

@implementation ReactiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"ReactiveModalSegue"])
    {
        ReactiveModalViewController *rmvc = [segue destinationViewController];
        
        [rmvc.reactiveModalSignal subscribeNext:^(NSString *value) {
            NSLog(@"next: %@", value);
        } completed:^{
            NSLog(@"completed");
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
    }
}

@end
