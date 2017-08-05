//
//  BinaryTreeTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BinaryTree.h"

@interface BinaryTreeTest : XCTestCase

@end

@implementation BinaryTreeTest

BinaryTree *mockTree;

- (void)setUp {
    [super setUp];
    mockTree = [[BinaryTree alloc]init];
}

- (void)testAdd {
    [mockTree add:5];
    [mockTree add:1];
    [mockTree add:8];
    [mockTree add:0];
}

- (void)testDescription
{
    [mockTree add:5];
    [mockTree add:2];
    [mockTree add:8];
    [mockTree add:3];
    [mockTree add:7];
    NSString* description = [mockTree description];
    NSString* expectedString = @"2,3,5,7,8,";
    BOOL areEqual = [description isEqualToString:expectedString];
    XCTAssertTrue(areEqual);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
