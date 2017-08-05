//
//  FactorialTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Factorial.h"

@interface FactorialTest : XCTestCase

@end

@implementation FactorialTest

Factorial *fac;

- (void)setUp {
    [super setUp];
    fac = [[Factorial alloc]init];
}

- (void) testFac
{
    int n = 5;
    int expected = 120;
    XCTAssertTrue([fac factorial:n] == expected);
}


@end
