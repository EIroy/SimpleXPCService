//
//  XPCService.h
//  XPCService
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XPCServiceProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
//@interface XPCService : NSObject <XPCServiceProtocol>
//@end
@interface SimpleService : NSObject <SimpleProtocol>



@end
