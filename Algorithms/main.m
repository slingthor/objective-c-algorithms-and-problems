//
//  main.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *urlStr = @"http://www.bbc.co.uk/radio1/playlist.json";
        NSURLSession *urlSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSURL *url = [NSURL URLWithString:urlStr];
        [[urlSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if(error != nil)
            {
                NSLog(@"An error occured %@", [error localizedDescription]);
            }
            else
            {
                NSLog(@"RESPONSE: %@",response);
                NSLog(@"DATA: %@",data);
            }
        }]resume];
        [NSThread sleepForTimeInterval:8];
        NSLog(@"yolo");
    }
    return 0;
}
