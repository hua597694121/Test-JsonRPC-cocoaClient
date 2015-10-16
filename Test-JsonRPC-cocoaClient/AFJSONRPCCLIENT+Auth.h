//
//  AFJSONRPCCLIENT+Auth.h
//  Test-JsonRPC-cocoaClient
//
//  Created by Simon Baur on 16/10/15.
//  Copyright (c) 2015 Simon Baur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFJSONRPCClient/AFJSONRPCClient.h>

@interface AFJSONRPCClient (auth)
- (void)setUser:(NSString *)user andPass:(NSString *)pass;
@end