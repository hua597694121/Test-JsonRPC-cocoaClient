//
//  AFJSONRPCClient_Auth.m
//  Test-JsonRPC-cocoaClient
//
//  Created by Simon Baur on 16/10/15.
//  Copyright (c) 2015 Simon Baur. All rights reserved.
//

#import "AFJSONRPCClient_Auth.h"

@implementation AFJSONRPCClient_Auth

-(id)initWithEndpointURL:(NSURL *)URL {
    self = [super initWithEndpointURL:URL];
    if (self) {
        [self.requestSerializer setAuthorizationHeaderFieldWithUsername:@"testuser" password:@"testpass"];
    }
    return self;
}

-(instancetype)initWithEndpointURL:(NSURL *)URL andUser:(NSString *)user andPass:(NSString *)pass {
    self = [super initWithEndpointURL:URL];
    if (self) {
        [self.requestSerializer setAuthorizationHeaderFieldWithUsername:user password:pass];
    }
    return self;
}

@end
