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
    
    AFJSONRPCClient *client = [AFJSONRPCClient clientWithEndpointURL:[NSURL URLWithString:@"http://localhost/Test-JsonRPC-phpServer/Server.php"]];
    
    // Invocation
    [client invokeMethod:@"hello"
                 success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"success");
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"fail");
    }];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
