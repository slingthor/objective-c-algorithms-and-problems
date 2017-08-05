//
//  StackElem.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "StackElem.h"

@implementation StackElem

+ (instancetype) withNext:(StackElem *)aNext value:(int)aValue
{
    return [[StackElem alloc] initWithNext:aNext value:aValue];
}

- (instancetype) initWithNext:(StackElem *)aNext value:(int)aValue
{
    self = [super init];
    if(self != nil)
    {
        [self.next setNext:aNext];
        self.value = aValue;
    }
    return self;
}

@end
