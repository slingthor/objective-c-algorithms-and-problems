//
//  LinkedListTest.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LinkedList.h"

@interface LinkedListTest : XCTestCase

@end

@implementation LinkedListTest

LinkedList *mockList;

- (void)setUp {
    [super setUp];
    mockList = [[LinkedList alloc]init];
    for(int i = 0; i < 5; i++)
    {
        [mockList AddElem:i];
    }
}

- (void)testAdd {
    XCTAssertTrue([mockList Head].Value == 4);
  
}

- (void)testDescriptor {
    NSString *expectedDescription = @"4,3,2,1,0";
    XCTAssertTrue([expectedDescription isEqualToString:[mockList description]]);
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


@end
