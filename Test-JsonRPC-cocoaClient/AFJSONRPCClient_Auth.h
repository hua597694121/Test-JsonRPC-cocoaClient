//
//  AFJSONRPCClient_Auth.h
//  Test-JsonRPC-cocoaClient
//
//  Created by Simon Baur on 16/10/15.
//  Copyright (c) 2015 Simon Baur. All rights reserved.
//

#import <AFJSONRPCClient/AFJSONRPCClient.h>

@interface AFJSONRPCClient_Auth : AFJSONRPCClient
-(id)initWithEndpointURL:(NSURL *)URL;
-(instancetype)initWithEndpointURL:(NSURL *)URL andUser:(NSString*)user andPass:(NSString*)pass;
@end
