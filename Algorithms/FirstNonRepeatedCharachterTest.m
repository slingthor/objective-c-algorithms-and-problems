//
//  FirstNonRepeatedCharachter.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FirstNonRepeatedCharacter.h"
#import "BoxedUniChar.h"

@interface FirstNonRepeatedCharachterTest : XCTestCase

@end

@implementation FirstNonRepeatedCharachterTest

FirstNonRepeatedCharacter* firstNonRepeated;


- (void)setUp {
    [super setUp];
    firstNonRepeated = [[FirstNonRepeatedCharacter alloc]init];
}

- (void) testSuccess
{
    NSString* successString = @"hehelh";
    BoxedUniChar* first = [firstNonRepeated findFirstNonRepeatedCharacter:successString];
    XCTAssertTrue(first.value == [BoxedUniChar withUniChar:[@"l" characterAtIndex:0]].value);
}

@end
