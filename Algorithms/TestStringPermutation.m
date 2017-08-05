//
//  TestStringPermutation.m
//  Algorithms
//
//  Created by Marianne Glad on 8/1/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StringPermutations.h"

@interface TestStringPermutation : XCTestCase

@end

@implementation TestStringPermutation



- (void)setUp {
    [super setUp];
  //  stringPermutations = [[StringPermutations alloc]init];
}

- (void) testSuccess
{
    StringPermutations *stringPermutations = [[StringPermutations alloc]init];
    NSString *result = [stringPermutations GetPermutations:@"abc"];
    XCTAssertTrue(true);
}



@end
