//
//  BinaryTreeNode.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

+ (instancetype) withValue:(int)value
{
    return [[BinaryTreeNode alloc]initWithValue:value];
}

- (instancetype) initWithValue : (int) value;
{
    self = [super init];
    if(self != nil)
    {
        self.value = value;
    }
    return self;
}

@end
