
//
//  XPCService.m
//  XPCService
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "XPCService.h"

@implementation SimpleService //: NSObject <SimpleProtocol>

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}

- (void)generateSomeNumber:(UInt32)maxNumber {
    int number = arc4random_uniform(maxNumber);
    printf("Random numer created: %d\n", number);
}

@end
