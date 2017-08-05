//
//  Stack.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "Stack.h"

@implementation Stack : NSObject

@synthesize count;
@synthesize isEmpty;


- (BOOL) isEmpty
{
    return self.head == nil;
}

- (void) push : (int) value
{
    if(isEmpty)
    {
        self.head = [StackElem withNext:nil value:value];
    }
    else
    {
        StackElem *newElem = [StackElem withNext:self.head value:value];
        [self setHead:newElem];
    }
}

- (int) pop
{
    int value = self.head.value;
    if(self.head.next == nil)
    {
        self.head = nil;
    }
    else
    {
        self.head = self.head.next;
    }
    return value;
}


- (int) peek
{
    
    return self.head.value;
}

@end
