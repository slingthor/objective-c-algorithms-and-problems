//
//  TestRemoveFromString.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RemoveFromString.h"

@interface TestRemoveFromString : XCTestCase

@end

@implementation TestRemoveFromString

RemoveFromString* removeFromString;

- (void)setUp {
    [super setUp];
    removeFromString = [[RemoveFromString alloc]init];
}

- (void) testRemove
{
    NSString* string = @"halloman";
    NSString* remove = @"alm";
    NSString* actual = [removeFromString removeFromString:string withToRemove:remove];
    XCTAssertTrue([actual isEqualToString:@"hon"]);
}


@end
