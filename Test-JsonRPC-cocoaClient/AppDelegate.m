//
//  AppDelegate.m
//  Test-JsonRPC-cocoaClient
//
//  Created by Simon Baur on 15/10/15.
//  Copyright (c) 2015 Simon Baur. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    AFJSONRPCClient *client = [AFJSONRPCClient clientWithEndpointURL:[NSURL URLWithString:@"http://localhost/Test-JsonRPC-phpServer/Server_Auth.php"]];
    
    [client setUser:@"testuser" andPass:@"testpass"];
    
    // Invocation
    [client invokeMethod:@"hello"
        success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"success %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"fail %@", error);
    }];
    
    [client invokeMethod:@"addition" withParameters:@[@(11), @(42)] success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"success %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"fail %@", error);
    }];
    
    [client invokeMethod:@"random" withParameters:@[@(11), @(42)] success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"success %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"fail %@", error);
    }];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
