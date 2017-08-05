//
//  StringToIntegerTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StringToInteger.h"

@interface StringToIntegerTest : XCTestCase

@end

@implementation StringToIntegerTest

StringToInteger* sti;

- (void)setUp {
    [super setUp];
    sti = [[StringToInteger alloc]init];
}

- (void) testToInt
{
    NSString* testStr = @"4321";
    int expected = 4321;
    int actual = [sti strToInt:testStr];
    XCTAssertTrue(expected == actual);
}

- (void) testToString
{
    int testInt = 4321;
    NSString* expected = @"4321";
    NSString* actual = [sti intToStr:testInt];
    XCTAssertTrue([expected isEqualToString:actual]);
}


@end
