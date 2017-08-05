//
//  QuickSortTest.m
//  Algorithms
//
//  Created by Marianne Glad on 8/1/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QuickSort.h"

@interface QuickSortTest : XCTestCase

@end

@implementation QuickSortTest


- (void) testQuickSort
{
    NSMutableArray *testArr = [NSMutableArray arrayWithObjects:@2, @1, @4, @3, @6, @5, nil];
    NSArray *sortedArr = [QuickSort sort:testArr];
    NSArray *expectedArr = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, @6, nil];
    for(int i = 0; i < [sortedArr count];i++)
    {
        XCTAssertTrue([sortedArr[i] isEqualToNumber:expectedArr[i]]);
    }
}

@end
