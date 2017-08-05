//
//  BinarySearchTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BinarySearch.h"

@interface BinarySearchTest : XCTestCase

@end

@implementation BinarySearchTest

BinarySearch* binarySearch;

- (void)setUp {
    [super setUp];
    binarySearch = [[BinarySearch alloc]init];
}

- (void)testSuccess
{
    NSArray *mockArray = [NSArray arrayWithObjects:@1,@2,@3,@4,@5,@6,@7,@8, nil];
    int wanted = 2;
    int actual = [binarySearch binarySearch:mockArray wantedNum:wanted];
    int expected = 1;
    XCTAssertTrue(expected == actual);
}


@end
