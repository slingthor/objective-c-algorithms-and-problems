//
//  StackTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface StackTest : XCTestCase

@end

@implementation StackTest

Stack *mockStack;


- (void)setUp {
    [super setUp];
    mockStack = [[Stack alloc]init];
}

- (void) testPush
{
    [mockStack push:0];
}

-(void) testPeek
{
    [mockStack push:1];
    XCTAssertTrue([mockStack peek] == 1);
}


- (void) testIsEmptyFalse
{
    XCTAssertTrue([mockStack isEmpty]);
}

- (void) testIsEmptyTrue
{
    [mockStack push:0];
    XCTAssertTrue(![mockStack isEmpty]);
}

- (void) testPop
{
    [mockStack push:2];
    int popped = [mockStack pop];
    XCTAssertTrue(popped = 2);
    XCTAssertTrue(mockStack.head == nil);
}

@end
