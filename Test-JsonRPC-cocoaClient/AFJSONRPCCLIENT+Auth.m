//
//  AFJSONRPCCLIENT+Auth.m
//  Test-JsonRPC-cocoaClient
//
//  Created by Simon Baur on 16/10/15.
//  Copyright (c) 2015 Simon Baur. All rights reserved.
//

#import "AFJSONRPCCLIENT+Auth.h"

@implementation AFJSONRPCClient (auth)

- (void)setUser:(NSString *)user andPass:(NSString *)pass {
    [self.requestSerializer setAuthorizationHeaderFieldWithUsername:user password:pass];
}

@end
