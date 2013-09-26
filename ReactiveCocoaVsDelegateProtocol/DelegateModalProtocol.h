//
//  DelegateModalProtocol.h
//  ReactiveCocoaVsDelegateProtocol
//
//  Created by Christopher Motl on 9/25/13.
//  Copyright (c) 2013 Christopher Motl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DelegateModalProtocol <NSObject>

- (void)done:(NSString *)value;

@end
