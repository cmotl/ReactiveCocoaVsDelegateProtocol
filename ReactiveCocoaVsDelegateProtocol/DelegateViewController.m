//
//  SecondViewController.m
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import "DelegateViewController.h"

@interface DelegateViewController ()

@end

@implementation DelegateViewController

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
    if([[segue identifier] isEqualToString:@"DelegateModalSegue"])
    {
        DelegateModalViewController *dmvc = [segue destinationViewController];
        
        dmvc.delegate = self;
    }
}

- (void)done:(NSString *)value
{
    NSLog(@"received value: %@", value);
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
